import Foundation

public extension PokemonMove {
    /// The Pokemon move known as タネマシンガン in Japanese.
    ///
    /// The localized name of this move is `"Bullet Seed"` in English and
    /// `"タネマシンガン"` in Japanese.
    ///
    /// The move's raw value is `"bullet-seed"`.
    static let bulletSeed = BulletSeed.move
}

enum BulletSeed {
    static let move = PokemonMove(rawValue: "bullet-seed")
    static let power10 = PokemonMove.Parameters(
        type: .grass,
        pp: 30,
        power: .fixed(10),
        hits: .range(2...5),
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )
    static let power25 = PokemonMove.Parameters(
        type: .grass,
        pp: 30,
        power: .fixed(25),
        hits: .range(2...5),
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
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
                parameters: power10
            ),
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .scarletViolet,
                    .champions,
                ],
                parameters: power25
            ),
        ],
        localizedNames: [
            .english: "Bullet Seed",
            .japanese: "タネマシンガン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bulletSeed = BulletSeed.definition
}

