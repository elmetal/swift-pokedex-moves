import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どくづき in Japanese.
    ///
    /// The localized name of this move is `"Poison Jab"` in English and
    /// `"どくづき"` in Japanese.
    ///
    /// The move's raw value is `"poison-jab"`.
    static let poisonJab = PoisonJabMove.move
}

enum PoisonJabMove {
    static let move = PokemonMove(rawValue: "poison-jab")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
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
            .english: "Poison Jab",
            .japanese: "どくづき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let poisonJab = PoisonJabMove.definition
}
