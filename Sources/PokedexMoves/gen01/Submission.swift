import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じごくぐるま in Japanese.
    ///
    /// The localized name of this move is `"Submission"` in English and
    /// `"じごくぐるま"` in Japanese.
    ///
    /// The move's raw value is `"submission"`.
    static let submission = SubmissionMove.move
}

enum SubmissionMove {
    static let move = PokemonMove(rawValue: "submission")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 25,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(80),
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
            .english: "Submission",
            .japanese: "じごくぐるま",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let submission = SubmissionMove.definition
}
