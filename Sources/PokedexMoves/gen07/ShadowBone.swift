import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャドーボーン in Japanese.
    ///
    /// The localized name of this move is `"Shadow Bone"` in English and
    /// `"シャドーボーン"` in Japanese.
    ///
    /// The move's raw value is `"shadow-bone"`.
    static let shadowBone = ShadowBoneMove.move
}

enum ShadowBoneMove {
    static let move = PokemonMove(rawValue: "shadow-bone")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Shadow Bone",
            .japanese: "シャドーボーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shadowBone = ShadowBoneMove.definition
}
