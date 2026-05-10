import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とぎすます in Japanese.
    ///
    /// The localized name of this move is `"Laser Focus"` in English and
    /// `"とぎすます"` in Japanese.
    ///
    /// The move's raw value is `"laser-focus"`.
    static let laserFocus = LaserFocusMove.move
}

enum LaserFocusMove {
    static let move = PokemonMove(rawValue: "laser-focus")
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
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Laser Focus",
            .japanese: "とぎすます",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let laserFocus = LaserFocusMove.definition
}
