import Foundation

protocol PokemonMoveDefinition: Sendable {
    static var move: PokemonMove { get }
    static var introducedIn: PokemonGeneration { get }
    static var parameters: PokemonMove.Parameters { get }

    static func name(locale: Locale) -> String
}

extension PokemonMoveDefinition {
    static func matchesName(_ value: String, locale: Locale) -> Bool {
        let input = value.trimmingCharacters(in: .whitespacesAndNewlines)

        return name(locale: locale).localizedStandardCompare(input) == .orderedSame
            || move.rawValue.localizedStandardCompare(input) == .orderedSame
    }
}

enum PokemonMoveDefinitions {
    static let all = gen01

    static let gen01: [any PokemonMoveDefinition.Type] = [
        Tackle.self,
    ]

    static func definition(for move: PokemonMove) -> (any PokemonMoveDefinition.Type)? {
        all.first { $0.move == move }
    }
}
