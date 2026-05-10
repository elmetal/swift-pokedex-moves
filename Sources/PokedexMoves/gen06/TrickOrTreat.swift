import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハロウィン in Japanese.
    ///
    /// The localized name of this move is `"Trick-or-Treat"` in English and
    /// `"ハロウィン"` in Japanese.
    ///
    /// The move's raw value is `"trick-or-treat"`.
    static let trickOrTreat = TrickOrTreatMove.move
}

enum TrickOrTreatMove {
    static let move = PokemonMove(rawValue: "trick-or-treat")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Trick-or-Treat",
            .japanese: "ハロウィン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let trickOrTreat = TrickOrTreatMove.definition
}
