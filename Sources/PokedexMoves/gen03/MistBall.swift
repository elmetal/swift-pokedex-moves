import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミストボール in Japanese.
    ///
    /// The localized name of this move is `"Mist Ball"` in English and
    /// `"ミストボール"` in Japanese.
    ///
    /// The move's raw value is `"mist-ball"`.
    static let mistBall = MistBallMove.move
}

enum MistBallMove {
    static let move = PokemonMove(rawValue: "mist-ball")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .fixed(95),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Mist Ball",
            .japanese: "ミストボール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mistBall = MistBallMove.definition
}
