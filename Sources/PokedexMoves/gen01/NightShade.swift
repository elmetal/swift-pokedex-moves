import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ナイトヘッド in Japanese.
    ///
    /// The localized name of this move is `"Night Shade"` in English and
    /// `"ナイトヘッド"` in Japanese.
    ///
    /// The move's raw value is `"night-shade"`.
    static let nightShade = NightShadeMove.move
}

enum NightShadeMove {
    static let move = PokemonMove(rawValue: "night-shade")
    static let parameters1 = PokemonMove.Parameters(
        type: .ghost,
        pp: 15,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ghost,
        pp: 15,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Night Shade",
            .japanese: "ナイトヘッド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let nightShade = NightShadeMove.definition
}
