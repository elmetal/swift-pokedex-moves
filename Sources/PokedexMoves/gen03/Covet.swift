import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほしがる in Japanese.
    ///
    /// The localized name of this move is `"Covet"` in English and
    /// `"ほしがる"` in Japanese.
    ///
    /// The move's raw value is `"covet"`.
    static let covet = CovetMove.move
}

enum CovetMove {
    static let move = PokemonMove(rawValue: "covet")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 25,
        power: .fixed(60),
        hits: .one,
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
                    .blackWhite,
                    .black2White2,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Covet",
            .japanese: "ほしがる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let covet = CovetMove.definition
}
