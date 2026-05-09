import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャドーボール in Japanese.
    ///
    /// The localized name of this move is `"Shadow Ball"` in English and
    /// `"シャドーボール"` in Japanese.
    ///
    /// The move's raw value is `"shadow-ball"`.
    static let shadowBall = ShadowBallMove.move
}

enum ShadowBallMove {
    static let move = PokemonMove(rawValue: "shadow-ball")
    static let parameters1 = PokemonMove.Parameters(
        type: .ghost,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ghost,
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
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .goldSilver,
                    .crystal,
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
            .english: "Shadow Ball",
            .japanese: "シャドーボール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shadowBall = ShadowBallMove.definition
}
