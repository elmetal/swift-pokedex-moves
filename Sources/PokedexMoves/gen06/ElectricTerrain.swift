import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エレキフィールド in Japanese.
    ///
    /// The localized name of this move is `"Electric Terrain"` in English and
    /// `"エレキフィールド"` in Japanese.
    ///
    /// The move's raw value is `"electric-terrain"`.
    static let electricTerrain = ElectricTerrainMove.move
}

enum ElectricTerrainMove {
    static let move = PokemonMove(rawValue: "electric-terrain")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
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
            .english: "Electric Terrain",
            .japanese: "エレキフィールド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let electricTerrain = ElectricTerrainMove.definition
}
