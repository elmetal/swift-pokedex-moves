import Foundation

public extension PokemonMove {
    /// The Pokemon move known as １０まんボルト in Japanese.
    ///
    /// The localized name of this move is `"Thunderbolt"` in English and
    /// `"１０まんボルト"` in Japanese.
    ///
    /// The move's raw value is `"thunderbolt"`.
    static let thunderbolt = ThunderboltMove.move
}

enum ThunderboltMove {
    static let move = PokemonMove(rawValue: "thunderbolt")
    static let parameters1 = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(90),
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
            .english: "Thunderbolt",
            .japanese: "１０まんボルト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunderbolt = ThunderboltMove.definition
}
