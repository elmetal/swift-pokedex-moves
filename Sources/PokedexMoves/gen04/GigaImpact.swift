import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ギガインパクト in Japanese.
    ///
    /// The localized name of this move is `"Giga Impact"` in English and
    /// `"ギガインパクト"` in Japanese.
    ///
    /// The move's raw value is `"giga-impact"`.
    static let gigaImpact = GigaImpactMove.move
}

enum GigaImpactMove {
    static let move = PokemonMove(rawValue: "giga-impact")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
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
            .english: "Giga Impact",
            .japanese: "ギガインパクト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gigaImpact = GigaImpactMove.definition
}
