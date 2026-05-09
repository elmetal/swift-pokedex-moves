import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スモッグ in Japanese.
    ///
    /// The localized name of this move is `"Smog"` in English and
    /// `"スモッグ"` in Japanese.
    ///
    /// The move's raw value is `"smog"`.
    static let smog = SmogMove.move
}

enum SmogMove {
    static let move = PokemonMove(rawValue: "smog")
    static let parameters1 = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(70),
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
            .english: "Smog",
            .japanese: "スモッグ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let smog = SmogMove.definition
}
