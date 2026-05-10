import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なやみのタネ in Japanese.
    ///
    /// The localized name of this move is `"Worry Seed"` in English and
    /// `"なやみのタネ"` in Japanese.
    ///
    /// The move's raw value is `"worry-seed"`.
    static let worrySeed = WorrySeedMove.move
}

enum WorrySeedMove {
    static let move = PokemonMove(rawValue: "worry-seed")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Worry Seed",
            .japanese: "なやみのタネ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let worrySeed = WorrySeedMove.definition
}
