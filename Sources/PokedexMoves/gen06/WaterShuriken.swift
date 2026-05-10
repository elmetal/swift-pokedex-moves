import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みずしゅりけん in Japanese.
    ///
    /// The localized name of this move is `"Water Shuriken"` in English and
    /// `"みずしゅりけん"` in Japanese.
    ///
    /// The move's raw value is `"water-shuriken"`.
    static let waterShuriken = WaterShurikenMove.move
}

enum WaterShurikenMove {
    static let move = PokemonMove(rawValue: "water-shuriken")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(15),
        hits: .range(2...5),
        accuracy: .percent(100),
        priority: 1,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(15),
        hits: .range(2...5),
        accuracy: .percent(100),
        priority: 1,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [.xY, .omegaRubyAlphaSapphire],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Water Shuriken",
            .japanese: "みずしゅりけん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let waterShuriken = WaterShurikenMove.definition
}
