import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たきのぼり in Japanese.
    ///
    /// The localized name of this move is `"Waterfall"` in English and
    /// `"たきのぼり"` in Japanese.
    ///
    /// The move's raw value is `"waterfall"`.
    static let waterfall = WaterfallMove.move
}

enum WaterfallMove {
    static let move = PokemonMove(rawValue: "waterfall")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
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
            .english: "Waterfall",
            .japanese: "たきのぼり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let waterfall = WaterfallMove.definition
}
