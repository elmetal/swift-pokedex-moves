import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ストーンエッジ in Japanese.
    ///
    /// The localized name of this move is `"Stone Edge"` in English and
    /// `"ストーンエッジ"` in Japanese.
    ///
    /// The move's raw value is `"stone-edge"`.
    static let stoneEdge = StoneEdgeMove.move
}

enum StoneEdgeMove {
    static let move = PokemonMove(rawValue: "stone-edge")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(80),
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
            .english: "Stone Edge",
            .japanese: "ストーンエッジ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stoneEdge = StoneEdgeMove.definition
}
