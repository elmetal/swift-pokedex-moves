import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミストフィールド in Japanese.
    ///
    /// The localized name of this move is `"Misty Terrain"` in English and
    /// `"ミストフィールド"` in Japanese.
    ///
    /// The move's raw value is `"misty-terrain"`.
    static let mistyTerrain = MistyTerrainMove.move
}

enum MistyTerrainMove {
    static let move = PokemonMove(rawValue: "misty-terrain")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
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
            .english: "Misty Terrain",
            .japanese: "ミストフィールド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mistyTerrain = MistyTerrainMove.definition
}
