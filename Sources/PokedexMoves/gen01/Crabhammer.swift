import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クラブハンマー in Japanese.
    ///
    /// The localized name of this move is `"Crabhammer"` in English and
    /// `"クラブハンマー"` in Japanese.
    ///
    /// The move's raw value is `"crabhammer"`.
    static let crabhammer = CrabhammerMove.move
}

enum CrabhammerMove {
    static let move = PokemonMove(rawValue: "crabhammer")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Crabhammer",
            .japanese: "クラブハンマー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let crabhammer = CrabhammerMove.definition
}
