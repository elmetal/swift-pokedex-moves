import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふんえん in Japanese.
    ///
    /// The localized name of this move is `"Lava Plume"` in English and
    /// `"ふんえん"` in Japanese.
    ///
    /// The move's raw value is `"lava-plume"`.
    static let lavaPlume = LavaPlumeMove.move
}

enum LavaPlumeMove {
    static let move = PokemonMove(rawValue: "lava-plume")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
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
            .english: "Lava Plume",
            .japanese: "ふんえん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lavaPlume = LavaPlumeMove.definition
}
