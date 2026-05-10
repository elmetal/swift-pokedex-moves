import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こごえるせかい in Japanese.
    ///
    /// The localized name of this move is `"Glaciate"` in English and
    /// `"こごえるせかい"` in Japanese.
    ///
    /// The move's raw value is `"glaciate"`.
    static let glaciate = GlaciateMove.move
}

enum GlaciateMove {
    static let move = PokemonMove(rawValue: "glaciate")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
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
            .english: "Glaciate",
            .japanese: "こごえるせかい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let glaciate = GlaciateMove.definition
}
