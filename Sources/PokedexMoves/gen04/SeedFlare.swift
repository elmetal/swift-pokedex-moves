import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シードフレア in Japanese.
    ///
    /// The localized name of this move is `"Seed Flare"` in English and
    /// `"シードフレア"` in Japanese.
    ///
    /// The move's raw value is `"seed-flare"`.
    static let seedFlare = SeedFlareMove.move
}

enum SeedFlareMove {
    static let move = PokemonMove(rawValue: "seed-flare")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
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
            .english: "Seed Flare",
            .japanese: "シードフレア",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let seedFlare = SeedFlareMove.definition
}
