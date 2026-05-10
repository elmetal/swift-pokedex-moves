import Foundation

public extension PokemonMove {
    /// The Pokemon move known as てかげん in Japanese.
    ///
    /// The localized name of this move is `"Hold Back"` in English and
    /// `"てかげん"` in Japanese.
    ///
    /// The move's raw value is `"hold-back"`.
    static let holdBack = HoldBackMove.move
}

enum HoldBackMove {
    static let move = PokemonMove(rawValue: "hold-back")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .fixed(40),
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
            .english: "Hold Back",
            .japanese: "てかげん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let holdBack = HoldBackMove.definition
}
