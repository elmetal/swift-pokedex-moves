import Foundation

/// A definition for a Pokemon move.
///
/// A move definition contains the move identifier, localized names,
/// introductory generation, and parameter history.
public struct PokemonMoveDefinition: Hashable, Sendable {
    /// The move this definition describes.
    public let move: PokemonMove

    /// The generation in which the move was introduced.
    public let introducedIn: PokemonGeneration

    /// The move's parameter history.
    public let parameterHistory: [PokemonMove.ParameterSet]

    /// The latest battle parameters for the move.
    public var parameters: PokemonMove.Parameters {
        guard let parameters = parameterHistory.last?.parameters else {
            preconditionFailure("PokemonMoveDefinition requires at least one parameter set.")
        }

        return parameters
    }

    /// The localized names for the move.
    public let localizedNames: [Locale.LanguageCode: String]

    /// Creates a definition with the specified move data.
    public init(
        move: PokemonMove,
        introducedIn: PokemonGeneration,
        parameterHistory: [PokemonMove.ParameterSet],
        localizedNames: [Locale.LanguageCode: String]
    ) {
        self.move = move
        self.introducedIn = introducedIn
        self.parameterHistory = parameterHistory
        self.localizedNames = localizedNames
    }

    /// Creates a definition with a single parameter set.
    public init(
        move: PokemonMove,
        introducedIn: PokemonGeneration,
        parameters: PokemonMove.Parameters,
        localizedNames: [Locale.LanguageCode: String]
    ) {
        self.init(
            move: move,
            introducedIn: introducedIn,
            parameterHistory: [
                .init(
                    versionGroups: Set(PokemonVersionGroup.allCases),
                    parameters: parameters
                ),
            ],
            localizedNames: localizedNames
        )
    }

    /// Returns the move's name in the specified locale.
    ///
    /// If a name isn't available for the locale, this method returns the
    /// English name. If no English name is available, it returns the move's raw
    /// value.
    public func name(locale: Locale) -> String {
        localizedNames[locale.language.languageCode ?? .english]
            ?? localizedNames[.english]
            ?? move.rawValue
    }

    /// Returns the move's parameters in the specified version group.
    public func parameters(in versionGroup: PokemonVersionGroup) -> PokemonMove.Parameters? {
        parameterHistory.last { $0.versionGroups.contains(versionGroup) }?.parameters
    }

    /// Returns the move's parameters in the specified generation.
    ///
    /// This method throws an error when the generation contains multiple
    /// matching parameter values.
    public func parameters(in generation: PokemonGeneration) throws -> PokemonMove.Parameters {
        let versionGroups = Set(PokemonVersionGroup.all(in: generation))
        let matches = parameterHistory.filter {
            !$0.versionGroups.isDisjoint(with: versionGroups)
        }

        guard !matches.isEmpty else {
            throw PokemonMoveParameterLookupError.unavailableGeneration(generation)
        }

        let uniqueParameters = Set(matches.map(\.parameters))

        guard uniqueParameters.count == 1, let parameters = uniqueParameters.first else {
            let matchingVersionGroups = matches.reduce(into: Set<PokemonVersionGroup>()) {
                $0.formUnion($1.versionGroups.intersection(versionGroups))
            }

            throw PokemonMoveParameterLookupError.ambiguousParameters(
                generation,
                versionGroups: matchingVersionGroups
            )
        }

        return parameters
    }

    func matchesName(_ value: String, locale: Locale) -> Bool {
        let input = value.trimmingCharacters(in: .whitespacesAndNewlines)

        return name(locale: locale).localizedStandardCompare(input) == .orderedSame
            || move.rawValue.localizedStandardCompare(input) == .orderedSame
    }
}

/// A namespace for standard move definitions.
public enum PokemonMoveDefinitions {
    /// All standard move definitions.
    public static let all = gen01 + gen03 + gen08

    /// The standard move definitions introduced in Generation I.
    public static let gen01: [PokemonMoveDefinition] = [
        tackle,
        growl,
        doubleKick,
        hypnosis,
        swift,
    ]

    /// The standard move definitions introduced in Generation III.
    public static let gen03: [PokemonMoveDefinition] = [
        bulletSeed,
    ]

    /// The standard move definitions introduced in Generation VIII.
    public static let gen08: [PokemonMoveDefinition] = [
        tripleAxel,
    ]

    /// Returns the standard definition for the specified move.
    public static func definition(for move: PokemonMove) -> PokemonMoveDefinition? {
        all.first { $0.move == move }
    }
}
