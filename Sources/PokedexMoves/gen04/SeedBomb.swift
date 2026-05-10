import Foundation

public extension PokemonMove {
    /// The Pokemon move known as タネばくだん in Japanese.
    ///
    /// The localized name of this move is `"Seed Bomb"` in English and
    /// `"タネばくだん"` in Japanese.
    ///
    /// The move's raw value is `"seed-bomb"`.
    static let seedBomb = SeedBombMove.move
}

enum SeedBombMove {
    static let move = PokemonMove(rawValue: "seed-bomb")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Seed Bomb",
            .japanese: "タネばくだん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let seedBomb = SeedBombMove.definition
}
