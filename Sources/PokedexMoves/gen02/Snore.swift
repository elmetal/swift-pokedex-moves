import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いびき in Japanese.
    ///
    /// The localized name of this move is `"Snore"` in English and
    /// `"いびき"` in Japanese.
    ///
    /// The move's raw value is `"snore"`.
    static let snore = SnoreMove.move
}

enum SnoreMove {
    static let move = PokemonMove(rawValue: "snore")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(50),
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
                ],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Snore",
            .japanese: "いびき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let snore = SnoreMove.definition
}
