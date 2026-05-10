import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クロスサンダー in Japanese.
    ///
    /// The localized name of this move is `"Fusion Bolt"` in English and
    /// `"クロスサンダー"` in Japanese.
    ///
    /// The move's raw value is `"fusion-bolt"`.
    static let fusionBolt = FusionBoltMove.move
}

enum FusionBoltMove {
    static let move = PokemonMove(rawValue: "fusion-bolt")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 5,
        power: .fixed(100),
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
            .english: "Fusion Bolt",
            .japanese: "クロスサンダー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fusionBolt = FusionBoltMove.definition
}
