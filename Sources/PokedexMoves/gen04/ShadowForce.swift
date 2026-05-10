import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャドーダイブ in Japanese.
    ///
    /// The localized name of this move is `"Shadow Force"` in English and
    /// `"シャドーダイブ"` in Japanese.
    ///
    /// The move's raw value is `"shadow-force"`.
    static let shadowForce = ShadowForceMove.move
}

enum ShadowForceMove {
    static let move = PokemonMove(rawValue: "shadow-force")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 5,
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
            .english: "Shadow Force",
            .japanese: "シャドーダイブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shadowForce = ShadowForceMove.definition
}
