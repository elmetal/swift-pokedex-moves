import Foundation

public extension PokemonMove {
    /// The Pokemon move known as からてチョップ in Japanese.
    ///
    /// The localized name of this move is `"Karate Chop"` in English and
    /// `"からてチョップ"` in Japanese.
    ///
    /// The move's raw value is `"karate-chop"`.
    static let karateChop = KarateChopMove.move
}

enum KarateChopMove {
    static let move = PokemonMove(rawValue: "karate-chop")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 25,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 25,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Karate Chop",
            .japanese: "からてチョップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let karateChop = KarateChopMove.definition
}
