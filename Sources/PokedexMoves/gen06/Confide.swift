import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ないしょばなし in Japanese.
    ///
    /// The localized name of this move is `"Confide"` in English and
    /// `"ないしょばなし"` in Japanese.
    ///
    /// The move's raw value is `"confide"`.
    static let confide = ConfideMove.move
}

enum ConfideMove {
    static let move = PokemonMove(rawValue: "confide")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Confide",
            .japanese: "ないしょばなし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let confide = ConfideMove.definition
}
