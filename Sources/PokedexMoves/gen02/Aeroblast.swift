import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エアロブラスト in Japanese.
    ///
    /// The localized name of this move is `"Aeroblast"` in English and
    /// `"エアロブラスト"` in Japanese.
    ///
    /// The move's raw value is `"aeroblast"`.
    static let aeroblast = AeroblastMove.move
}

enum AeroblastMove {
    static let move = PokemonMove(rawValue: "aeroblast")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Aeroblast",
            .japanese: "エアロブラスト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aeroblast = AeroblastMove.definition
}
