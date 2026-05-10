import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サウザンアロー in Japanese.
    ///
    /// The localized name of this move is `"Thousand Arrows"` in English and
    /// `"サウザンアロー"` in Japanese.
    ///
    /// The move's raw value is `"thousand-arrows"`.
    static let thousandArrows = ThousandArrowsMove.move
}

enum ThousandArrowsMove {
    static let move = PokemonMove(rawValue: "thousand-arrows")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
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
            .english: "Thousand Arrows",
            .japanese: "サウザンアロー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thousandArrows = ThousandArrowsMove.definition
}
