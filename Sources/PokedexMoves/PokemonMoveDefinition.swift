import Foundation

public struct PokemonMoveDefinition: Hashable, Sendable {
    public let move: PokemonMove
    public let introducedIn: PokemonGeneration
    public let parameters: PokemonMove.Parameters
    public let localizedNames: [Locale.LanguageCode: String]

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

public enum PokemonMoveDefinitions {
    public static let all = gen01

    public static let gen01: [PokemonMoveDefinition] = [
        tackle,
    ]

    public static func definition(for move: PokemonMove) -> PokemonMoveDefinition? {
        all.first { $0.move == move }
    }
}

