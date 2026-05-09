import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ウェザーボール in Japanese.
    ///
    /// The localized name of this move is `"Weather Ball"` in English and
    /// `"ウェザーボール"` in Japanese.
    ///
    /// The move's raw value is `"weather-ball"`.
    static let weatherBall = WeatherBallMove.move
}

enum WeatherBallMove {
    static let move = PokemonMove(rawValue: "weather-ball")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Weather Ball",
            .japanese: "ウェザーボール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let weatherBall = WeatherBallMove.definition
}
