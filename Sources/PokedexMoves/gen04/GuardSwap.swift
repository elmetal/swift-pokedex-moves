import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ガードスワップ in Japanese.
    ///
    /// The localized name of this move is `"Guard Swap"` in English and
    /// `"ガードスワップ"` in Japanese.
    ///
    /// The move's raw value is `"guard-swap"`.
    static let guardSwap = GuardSwapMove.move
}

enum GuardSwapMove {
    static let move = PokemonMove(rawValue: "guard-swap")
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
            .english: "Guard Swap",
            .japanese: "ガードスワップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let guardSwap = GuardSwapMove.definition
}
