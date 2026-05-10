import Foundation

public extension PokemonMove {
    /// The Pokemon move known as だんがいのつるぎ in Japanese.
    ///
    /// The localized name of this move is `"Precipice Blades"` in English and
    /// `"だんがいのつるぎ"` in Japanese.
    ///
    /// The move's raw value is `"precipice-blades"`.
    static let precipiceBlades = PrecipiceBladesMove.move
}

enum PrecipiceBladesMove {
    static let move = PokemonMove(rawValue: "precipice-blades")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Precipice Blades",
            .japanese: "だんがいのつるぎ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let precipiceBlades = PrecipiceBladesMove.definition
}
