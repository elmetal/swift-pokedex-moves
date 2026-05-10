import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はなふぶき in Japanese.
    ///
    /// The localized name of this move is `"Petal Blizzard"` in English and
    /// `"はなふぶき"` in Japanese.
    ///
    /// The move's raw value is `"petal-blizzard"`.
    static let petalBlizzard = PetalBlizzardMove.move
}

enum PetalBlizzardMove {
    static let move = PokemonMove(rawValue: "petal-blizzard")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Petal Blizzard",
            .japanese: "はなふぶき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let petalBlizzard = PetalBlizzardMove.definition
}
