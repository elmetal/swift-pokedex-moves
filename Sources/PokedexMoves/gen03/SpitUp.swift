import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はきだす in Japanese.
    ///
    /// The localized name of this move is `"Spit Up"` in English and
    /// `"はきだす"` in Japanese.
    ///
    /// The move's raw value is `"spit-up"`.
    static let spitUp = SpitUpMove.move
}

enum SpitUpMove {
    static let move = PokemonMove(rawValue: "spit-up")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .varies,
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
            .english: "Spit Up",
            .japanese: "はきだす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spitUp = SpitUpMove.definition
}
