import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ようせいのかぜ in Japanese.
    ///
    /// The localized name of this move is `"Fairy Wind"` in English and
    /// `"ようせいのかぜ"` in Japanese.
    ///
    /// The move's raw value is `"fairy-wind"`.
    static let fairyWind = FairyWindMove.move
}

enum FairyWindMove {
    static let move = PokemonMove(rawValue: "fairy-wind")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Fairy Wind",
            .japanese: "ようせいのかぜ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fairyWind = FairyWindMove.definition
}
