import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクアブレイク in Japanese.
    ///
    /// The localized name of this move is `"Liquidation"` in English and
    /// `"アクアブレイク"` in Japanese.
    ///
    /// The move's raw value is `"liquidation"`.
    static let liquidation = LiquidationMove.move
}

enum LiquidationMove {
    static let move = PokemonMove(rawValue: "liquidation")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Liquidation",
            .japanese: "アクアブレイク",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let liquidation = LiquidationMove.definition
}
