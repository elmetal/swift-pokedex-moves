import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つららばり in Japanese.
    ///
    /// The localized name of this move is `"Icicle Spear"` in English and
    /// `"つららばり"` in Japanese.
    ///
    /// The move's raw value is `"icicle-spear"`.
    static let icicleSpear = IcicleSpearMove.move
}

enum IcicleSpearMove {
    static let move = PokemonMove(rawValue: "icicle-spear")
    static let parameters1 = PokemonMove.Parameters(
        type: .ice,
        pp: 30,
        power: .fixed(10),
        hits: .range(2...5),
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ice,
        pp: 30,
        power: .fixed(10),
        hits: .range(2...5),
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .ice,
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
                parameters: parameters2
            ),
            .init(
                versionGroups: [
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Icicle Spear",
            .japanese: "つららばり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let icicleSpear = IcicleSpearMove.definition
}
