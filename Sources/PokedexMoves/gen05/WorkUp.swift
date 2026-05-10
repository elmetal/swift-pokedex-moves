import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふるいたてる in Japanese.
    ///
    /// The localized name of this move is `"Work Up"` in English and
    /// `"ふるいたてる"` in Japanese.
    ///
    /// The move's raw value is `"work-up"`.
    static let workUp = WorkUpMove.move
}

enum WorkUpMove {
    static let move = PokemonMove(rawValue: "work-up")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Work Up",
            .japanese: "ふるいたてる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let workUp = WorkUpMove.definition
}
