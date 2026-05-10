import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マジカルシャイン in Japanese.
    ///
    /// The localized name of this move is `"Dazzling Gleam"` in English and
    /// `"マジカルシャイン"` in Japanese.
    ///
    /// The move's raw value is `"dazzling-gleam"`.
    static let dazzlingGleam = DazzlingGleamMove.move
}

enum DazzlingGleamMove {
    static let move = PokemonMove(rawValue: "dazzling-gleam")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Dazzling Gleam",
            .japanese: "マジカルシャイン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dazzlingGleam = DazzlingGleamMove.definition
}
