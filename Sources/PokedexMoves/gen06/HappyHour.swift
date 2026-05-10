import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハッピータイム in Japanese.
    ///
    /// The localized name of this move is `"Happy Hour"` in English and
    /// `"ハッピータイム"` in Japanese.
    ///
    /// The move's raw value is `"happy-hour"`.
    static let happyHour = HappyHourMove.move
}

enum HappyHourMove {
    static let move = PokemonMove(rawValue: "happy-hour")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
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
            .english: "Happy Hour",
            .japanese: "ハッピータイム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let happyHour = HappyHourMove.definition
}
