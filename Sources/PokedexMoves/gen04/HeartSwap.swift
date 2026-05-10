import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハートスワップ in Japanese.
    ///
    /// The localized name of this move is `"Heart Swap"` in English and
    /// `"ハートスワップ"` in Japanese.
    ///
    /// The move's raw value is `"heart-swap"`.
    static let heartSwap = HeartSwapMove.move
}

enum HeartSwapMove {
    static let move = PokemonMove(rawValue: "heart-swap")
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
            .english: "Heart Swap",
            .japanese: "ハートスワップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let heartSwap = HeartSwapMove.definition
}
