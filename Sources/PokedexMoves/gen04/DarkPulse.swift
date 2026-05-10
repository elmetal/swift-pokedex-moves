import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あくのはどう in Japanese.
    ///
    /// The localized name of this move is `"Dark Pulse"` in English and
    /// `"あくのはどう"` in Japanese.
    ///
    /// The move's raw value is `"dark-pulse"`.
    static let darkPulse = DarkPulseMove.move
}

enum DarkPulseMove {
    static let move = PokemonMove(rawValue: "dark-pulse")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(80),
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
            .english: "Dark Pulse",
            .japanese: "あくのはどう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let darkPulse = DarkPulseMove.definition
}
