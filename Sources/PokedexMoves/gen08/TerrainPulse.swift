import Foundation

public extension PokemonMove {
    /// The Pokemon move known as だいちのはどう in Japanese.
    ///
    /// The localized name of this move is `"Terrain Pulse"` in English and
    /// `"だいちのはどう"` in Japanese.
    ///
    /// The move's raw value is `"terrain-pulse"`.
    static let terrainPulse = TerrainPulseMove.move
}

enum TerrainPulseMove {
    static let move = PokemonMove(rawValue: "terrain-pulse")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Terrain Pulse",
            .japanese: "だいちのはどう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let terrainPulse = TerrainPulseMove.definition
}
