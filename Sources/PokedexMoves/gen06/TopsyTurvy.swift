import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひっくりかえす in Japanese.
    ///
    /// The localized name of this move is `"Topsy-Turvy"` in English and
    /// `"ひっくりかえす"` in Japanese.
    ///
    /// The move's raw value is `"topsy-turvy"`.
    static let topsyTurvy = TopsyTurvyMove.move
}

enum TopsyTurvyMove {
    static let move = PokemonMove(rawValue: "topsy-turvy")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Topsy-Turvy",
            .japanese: "ひっくりかえす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let topsyTurvy = TopsyTurvyMove.definition
}
