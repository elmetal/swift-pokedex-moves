import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ラジアルエッジストーム in Japanese.
    ///
    /// The localized name of this move is `"Splintered Stormshards"` in English and
    /// `"ラジアルエッジストーム"` in Japanese.
    ///
    /// The move's raw value is `"splintered-stormshards"`.
    static let splinteredStormshards = SplinteredStormshardsMove.move
}

enum SplinteredStormshardsMove {
    static let move = PokemonMove(rawValue: "splintered-stormshards")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 1,
        power: .fixed(190),
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Splintered Stormshards",
            .japanese: "ラジアルエッジストーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let splinteredStormshards = SplinteredStormshardsMove.definition
}
