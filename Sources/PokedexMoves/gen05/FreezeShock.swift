import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フリーズボルト in Japanese.
    ///
    /// The localized name of this move is `"Freeze Shock"` in English and
    /// `"フリーズボルト"` in Japanese.
    ///
    /// The move's raw value is `"freeze-shock"`.
    static let freezeShock = FreezeShockMove.move
}

enum FreezeShockMove {
    static let move = PokemonMove(rawValue: "freeze-shock")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
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
            .english: "Freeze Shock",
            .japanese: "フリーズボルト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let freezeShock = FreezeShockMove.definition
}
