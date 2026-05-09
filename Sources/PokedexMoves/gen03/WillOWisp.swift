import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おにび in Japanese.
    ///
    /// The localized name of this move is `"Will-O-Wisp"` in English and
    /// `"おにび"` in Japanese.
    ///
    /// The move's raw value is `"will-o-wisp"`.
    static let willOWisp = WillOWispMove.move
}

enum WillOWispMove {
    static let move = PokemonMove(rawValue: "will-o-wisp")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .status,
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
            .english: "Will-O-Wisp",
            .japanese: "おにび",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let willOWisp = WillOWispMove.definition
}
