import Foundation

public extension PokemonMove {
    /// The Pokemon move known as グラスフィールド in Japanese.
    ///
    /// The localized name of this move is `"Grassy Terrain"` in English and
    /// `"グラスフィールド"` in Japanese.
    ///
    /// The move's raw value is `"grassy-terrain"`.
    static let grassyTerrain = GrassyTerrainMove.move
}

enum GrassyTerrainMove {
    static let move = PokemonMove(rawValue: "grassy-terrain")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Grassy Terrain",
            .japanese: "グラスフィールド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let grassyTerrain = GrassyTerrainMove.definition
}
