import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほっぺすりすり in Japanese.
    ///
    /// The localized name of this move is `"Nuzzle"` in English and
    /// `"ほっぺすりすり"` in Japanese.
    ///
    /// The move's raw value is `"nuzzle"`.
    static let nuzzle = NuzzleMove.move
}

enum NuzzleMove {
    static let move = PokemonMove(rawValue: "nuzzle")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Nuzzle",
            .japanese: "ほっぺすりすり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let nuzzle = NuzzleMove.definition
}
