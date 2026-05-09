import Foundation

/// A definition for a Pokemon move.
///
/// A move definition contains the move identifier, localized names,
/// introductory generation, and battle parameters.
public struct PokemonMoveDefinition: Hashable, Sendable {
    /// The move this definition describes.
    public let move: PokemonMove

    /// The generation in which the move was introduced.
    public let introducedIn: PokemonGeneration

    /// The move's battle parameters.
    public let parameters: PokemonMove.Parameters

    /// The localized names for the move.
    public let localizedNames: [Locale.LanguageCode: String]

    /// Creates a definition with the specified move data.
    public init(
        move: PokemonMove,
        introducedIn: PokemonGeneration,
        parameters: PokemonMove.Parameters,
        localizedNames: [Locale.LanguageCode: String]
    ) {
        self.move = move
        self.introducedIn = introducedIn
        self.parameters = parameters
        self.localizedNames = localizedNames
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

    func matchesName(_ value: String, locale: Locale) -> Bool {
        let input = value.trimmingCharacters(in: .whitespacesAndNewlines)

        return name(locale: locale).localizedStandardCompare(input) == .orderedSame
            || move.rawValue.localizedStandardCompare(input) == .orderedSame
    }
}

/// A namespace for standard move definitions.
public enum PokemonMoveDefinitions {
    /// All standard move definitions.
    public static let all = gen01

    /// The standard move definitions introduced in Generation I.
    public static let gen01: [PokemonMoveDefinition] = [
        tackle,
    ]

    /// Returns the standard definition for the specified move.
    public static func definition(for move: PokemonMove) -> PokemonMoveDefinition? {
        all.first { $0.move == move }
    }
}
