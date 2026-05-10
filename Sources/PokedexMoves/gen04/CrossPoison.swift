import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クロスポイズン in Japanese.
    ///
    /// The localized name of this move is `"Cross Poison"` in English and
    /// `"クロスポイズン"` in Japanese.
    ///
    /// The move's raw value is `"cross-poison"`.
    static let crossPoison = CrossPoisonMove.move
}

enum CrossPoisonMove {
    static let move = PokemonMove(rawValue: "cross-poison")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .fixed(70),
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
            .english: "Cross Poison",
            .japanese: "クロスポイズン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let crossPoison = CrossPoisonMove.definition
}
