import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いじげんホール in Japanese.
    ///
    /// The localized name of this move is `"Hyperspace Hole"` in English and
    /// `"いじげんホール"` in Japanese.
    ///
    /// The move's raw value is `"hyperspace-hole"`.
    static let hyperspaceHole = HyperspaceHoleMove.move
}

enum HyperspaceHoleMove {
    static let move = PokemonMove(rawValue: "hyperspace-hole")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .fixed(80),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
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
            .english: "Hyperspace Hole",
            .japanese: "いじげんホール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hyperspaceHole = HyperspaceHoleMove.definition
}
