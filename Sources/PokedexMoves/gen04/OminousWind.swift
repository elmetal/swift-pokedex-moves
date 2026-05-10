import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あやしいかぜ in Japanese.
    ///
    /// The localized name of this move is `"Ominous Wind"` in English and
    /// `"あやしいかぜ"` in Japanese.
    ///
    /// The move's raw value is `"ominous-wind"`.
    static let ominousWind = OminousWindMove.move
}

enum OminousWindMove {
    static let move = PokemonMove(rawValue: "ominous-wind")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 5,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Ominous Wind",
            .japanese: "あやしいかぜ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ominousWind = OminousWindMove.definition
}
