import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アイスボール in Japanese.
    ///
    /// The localized name of this move is `"Ice Ball"` in English and
    /// `"アイスボール"` in Japanese.
    ///
    /// The move's raw value is `"ice-ball"`.
    static let iceBall = IceBallMove.move
}

enum IceBallMove {
    static let move = PokemonMove(rawValue: "ice-ball")
    static let parameters1 = PokemonMove.Parameters(
        type: .ice,
        pp: 20,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ice,
        pp: 20,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
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
            .english: "Ice Ball",
            .japanese: "アイスボール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let iceBall = IceBallMove.definition
}
