import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フリーフォール in Japanese.
    ///
    /// The localized name of this move is `"Sky Drop"` in English and
    /// `"フリーフォール"` in Japanese.
    ///
    /// The move's raw value is `"sky-drop"`.
    static let skyDrop = SkyDropMove.move
}

enum SkyDropMove {
    static let move = PokemonMove(rawValue: "sky-drop")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Sky Drop",
            .japanese: "フリーフォール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let skyDrop = SkyDropMove.definition
}
