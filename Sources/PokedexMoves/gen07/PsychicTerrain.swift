import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコフィールド in Japanese.
    ///
    /// The localized name of this move is `"Psychic Terrain"` in English and
    /// `"サイコフィールド"` in Japanese.
    ///
    /// The move's raw value is `"psychic-terrain"`.
    static let psychicTerrain = PsychicTerrainMove.move
}

enum PsychicTerrainMove {
    static let move = PokemonMove(rawValue: "psychic-terrain")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
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
            .english: "Psychic Terrain",
            .japanese: "サイコフィールド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psychicTerrain = PsychicTerrainMove.definition
}
