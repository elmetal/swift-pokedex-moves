import Foundation

public extension PokemonMove {
    /// The Pokemon move known as せいなるつるぎ in Japanese.
    ///
    /// The localized name of this move is `"Sacred Sword"` in English and
    /// `"せいなるつるぎ"` in Japanese.
    ///
    /// The move's raw value is `"sacred-sword"`.
    static let sacredSword = SacredSwordMove.move
}

enum SacredSwordMove {
    static let move = PokemonMove(rawValue: "sacred-sword")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [.blackWhite, .black2White2],
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
            .english: "Sacred Sword",
            .japanese: "せいなるつるぎ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sacredSword = SacredSwordMove.definition
}
