import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かみつく in Japanese.
    ///
    /// The localized name of this move is `"Bite"` in English and
    /// `"かみつく"` in Japanese.
    ///
    /// The move's raw value is `"bite"`.
    static let bite = BiteMove.move
}

enum BiteMove {
    static let move = PokemonMove(rawValue: "bite")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 25,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 25,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .dark,
        pp: 25,
        power: .fixed(60),
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
                ],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Bite",
            .japanese: "かみつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bite = BiteMove.definition
}
