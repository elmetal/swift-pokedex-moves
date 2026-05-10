import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイマックスほう in Japanese.
    ///
    /// The localized name of this move is `"Dynamax Cannon"` in English and
    /// `"ダイマックスほう"` in Japanese.
    ///
    /// The move's raw value is `"dynamax-cannon"`.
    static let dynamaxCannon = DynamaxCannonMove.move
}

enum DynamaxCannonMove {
    static let move = PokemonMove(rawValue: "dynamax-cannon")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Dynamax Cannon",
            .japanese: "ダイマックスほう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dynamaxCannon = DynamaxCannonMove.definition
}
