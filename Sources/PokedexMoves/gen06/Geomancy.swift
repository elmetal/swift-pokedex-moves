import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ジオコントロール in Japanese.
    ///
    /// The localized name of this move is `"Geomancy"` in English and
    /// `"ジオコントロール"` in Japanese.
    ///
    /// The move's raw value is `"geomancy"`.
    static let geomancy = GeomancyMove.move
}

enum GeomancyMove {
    static let move = PokemonMove(rawValue: "geomancy")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Geomancy",
            .japanese: "ジオコントロール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let geomancy = GeomancyMove.definition
}
