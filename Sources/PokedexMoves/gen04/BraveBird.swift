import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブレイブバード in Japanese.
    ///
    /// The localized name of this move is `"Brave Bird"` in English and
    /// `"ブレイブバード"` in Japanese.
    ///
    /// The move's raw value is `"brave-bird"`.
    static let braveBird = BraveBirdMove.move
}

enum BraveBirdMove {
    static let move = PokemonMove(rawValue: "brave-bird")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Brave Bird",
            .japanese: "ブレイブバード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let braveBird = BraveBirdMove.definition
}
