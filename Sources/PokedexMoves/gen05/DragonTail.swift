import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドラゴンテール in Japanese.
    ///
    /// The localized name of this move is `"Dragon Tail"` in English and
    /// `"ドラゴンテール"` in Japanese.
    ///
    /// The move's raw value is `"dragon-tail"`.
    static let dragonTail = DragonTailMove.move
}

enum DragonTailMove {
    static let move = PokemonMove(rawValue: "dragon-tail")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(90),
        priority: -6,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Dragon Tail",
            .japanese: "ドラゴンテール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonTail = DragonTailMove.definition
}
