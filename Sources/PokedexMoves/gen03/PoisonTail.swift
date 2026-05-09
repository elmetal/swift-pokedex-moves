import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ポイズンテール in Japanese.
    ///
    /// The localized name of this move is `"Poison Tail"` in English and
    /// `"ポイズンテール"` in Japanese.
    ///
    /// The move's raw value is `"poison-tail"`.
    static let poisonTail = PoisonTailMove.move
}

enum PoisonTailMove {
    static let move = PokemonMove(rawValue: "poison-tail")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 25,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
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
            .english: "Poison Tail",
            .japanese: "ポイズンテール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let poisonTail = PoisonTailMove.definition
}
