import Foundation

public extension PokemonMove {
    /// The Pokemon move known as リベンジ in Japanese.
    ///
    /// The localized name of this move is `"Revenge"` in English and
    /// `"リベンジ"` in Japanese.
    ///
    /// The move's raw value is `"revenge"`.
    static let revenge = RevengeMove.move
}

enum RevengeMove {
    static let move = PokemonMove(rawValue: "revenge")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: -4,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Revenge",
            .japanese: "リベンジ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let revenge = RevengeMove.definition
}
