import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スピードスワップ in Japanese.
    ///
    /// The localized name of this move is `"Speed Swap"` in English and
    /// `"スピードスワップ"` in Japanese.
    ///
    /// The move's raw value is `"speed-swap"`.
    static let speedSwap = SpeedSwapMove.move
}

enum SpeedSwapMove {
    static let move = PokemonMove(rawValue: "speed-swap")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Speed Swap",
            .japanese: "スピードスワップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let speedSwap = SpeedSwapMove.definition
}
