import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アシッドボム in Japanese.
    ///
    /// The localized name of this move is `"Acid Spray"` in English and
    /// `"アシッドボム"` in Japanese.
    ///
    /// The move's raw value is `"acid-spray"`.
    static let acidSpray = AcidSprayMove.move
}

enum AcidSprayMove {
    static let move = PokemonMove(rawValue: "acid-spray")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .fixed(40),
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
            .english: "Acid Spray",
            .japanese: "アシッドボム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let acidSpray = AcidSprayMove.definition
}
