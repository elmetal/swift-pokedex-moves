import Foundation

public extension PokemonMove {
    /// The Pokemon move known as バークアウト in Japanese.
    ///
    /// The localized name of this move is `"Snarl"` in English and
    /// `"バークアウト"` in Japanese.
    ///
    /// The move's raw value is `"snarl"`.
    static let snarl = SnarlMove.move
}

enum SnarlMove {
    static let move = PokemonMove(rawValue: "snarl")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(55),
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
            .english: "Snarl",
            .japanese: "バークアウト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let snarl = SnarlMove.definition
}
