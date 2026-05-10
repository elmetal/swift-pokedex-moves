import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アンカーショット in Japanese.
    ///
    /// The localized name of this move is `"Anchor Shot"` in English and
    /// `"アンカーショット"` in Japanese.
    ///
    /// The move's raw value is `"anchor-shot"`.
    static let anchorShot = AnchorShotMove.move
}

enum AnchorShotMove {
    static let move = PokemonMove(rawValue: "anchor-shot")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 20,
        power: .fixed(80),
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
            .english: "Anchor Shot",
            .japanese: "アンカーショット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let anchorShot = AnchorShotMove.definition
}
