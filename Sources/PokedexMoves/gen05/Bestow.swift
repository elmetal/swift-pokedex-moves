import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ギフトパス in Japanese.
    ///
    /// The localized name of this move is `"Bestow"` in English and
    /// `"ギフトパス"` in Japanese.
    ///
    /// The move's raw value is `"bestow"`.
    static let bestow = BestowMove.move
}

enum BestowMove {
    static let move = PokemonMove(rawValue: "bestow")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Bestow",
            .japanese: "ギフトパス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bestow = BestowMove.definition
}
