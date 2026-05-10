import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねばねばネット in Japanese.
    ///
    /// The localized name of this move is `"Sticky Web"` in English and
    /// `"ねばねばネット"` in Japanese.
    ///
    /// The move's raw value is `"sticky-web"`.
    static let stickyWeb = StickyWebMove.move
}

enum StickyWebMove {
    static let move = PokemonMove(rawValue: "sticky-web")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .opposingSide
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
            .english: "Sticky Web",
            .japanese: "ねばねばネット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stickyWeb = StickyWebMove.definition
}
