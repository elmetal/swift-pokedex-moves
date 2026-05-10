import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャドークロー in Japanese.
    ///
    /// The localized name of this move is `"Shadow Claw"` in English and
    /// `"シャドークロー"` in Japanese.
    ///
    /// The move's raw value is `"shadow-claw"`.
    static let shadowClaw = ShadowClawMove.move
}

enum ShadowClawMove {
    static let move = PokemonMove(rawValue: "shadow-claw")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 15,
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
            .english: "Shadow Claw",
            .japanese: "シャドークロー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shadowClaw = ShadowClawMove.definition
}
