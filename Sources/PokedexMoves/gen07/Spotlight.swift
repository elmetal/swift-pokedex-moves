import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スポットライト in Japanese.
    ///
    /// The localized name of this move is `"Spotlight"` in English and
    /// `"スポットライト"` in Japanese.
    ///
    /// The move's raw value is `"spotlight"`.
    static let spotlight = SpotlightMove.move
}

enum SpotlightMove {
    static let move = PokemonMove(rawValue: "spotlight")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 3,
        category: .status,
        target: .target
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
            .english: "Spotlight",
            .japanese: "スポットライト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spotlight = SpotlightMove.definition
}
