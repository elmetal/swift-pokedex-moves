import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こころのめ in Japanese.
    ///
    /// The localized name of this move is `"Mind Reader"` in English and
    /// `"こころのめ"` in Japanese.
    ///
    /// The move's raw value is `"mind-reader"`.
    static let mindReader = MindReaderMove.move
}

enum MindReaderMove {
    static let move = PokemonMove(rawValue: "mind-reader")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Mind Reader",
            .japanese: "こころのめ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mindReader = MindReaderMove.definition
}
