import Foundation

public extension PokemonMove {
    /// The Pokemon move known as パワースワップ in Japanese.
    ///
    /// The localized name of this move is `"Power Swap"` in English and
    /// `"パワースワップ"` in Japanese.
    ///
    /// The move's raw value is `"power-swap"`.
    static let powerSwap = PowerSwapMove.move
}

enum PowerSwapMove {
    static let move = PokemonMove(rawValue: "power-swap")
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
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
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
            .english: "Power Swap",
            .japanese: "パワースワップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powerSwap = PowerSwapMove.definition
}
