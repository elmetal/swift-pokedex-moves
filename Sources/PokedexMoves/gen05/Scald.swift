import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねっとう in Japanese.
    ///
    /// The localized name of this move is `"Scald"` in English and
    /// `"ねっとう"` in Japanese.
    ///
    /// The move's raw value is `"scald"`.
    static let scald = ScaldMove.move
}

enum ScaldMove {
    static let move = PokemonMove(rawValue: "scald")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Scald",
            .japanese: "ねっとう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let scald = ScaldMove.definition
}
