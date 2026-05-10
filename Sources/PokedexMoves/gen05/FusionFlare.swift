import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クロスフレイム in Japanese.
    ///
    /// The localized name of this move is `"Fusion Flare"` in English and
    /// `"クロスフレイム"` in Japanese.
    ///
    /// The move's raw value is `"fusion-flare"`.
    static let fusionFlare = FusionFlareMove.move
}

enum FusionFlareMove {
    static let move = PokemonMove(rawValue: "fusion-flare")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(100),
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
            .english: "Fusion Flare",
            .japanese: "クロスフレイム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fusionFlare = FusionFlareMove.definition
}
