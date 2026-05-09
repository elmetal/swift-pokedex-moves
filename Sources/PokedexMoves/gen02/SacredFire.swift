import Foundation

public extension PokemonMove {
    /// The Pokemon move known as せいなるほのお in Japanese.
    ///
    /// The localized name of this move is `"Sacred Fire"` in English and
    /// `"せいなるほのお"` in Japanese.
    ///
    /// The move's raw value is `"sacred-fire"`.
    static let sacredFire = SacredFireMove.move
}

enum SacredFireMove {
    static let move = PokemonMove(rawValue: "sacred-fire")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
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
            .english: "Sacred Fire",
            .japanese: "せいなるほのお",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sacredFire = SacredFireMove.definition
}
