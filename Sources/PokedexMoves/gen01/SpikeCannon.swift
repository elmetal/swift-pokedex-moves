import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とげキャノン in Japanese.
    ///
    /// The localized name of this move is `"Spike Cannon"` in English and
    /// `"とげキャノン"` in Japanese.
    ///
    /// The move's raw value is `"spike-cannon"`.
    static let spikeCannon = SpikeCannonMove.move
}

enum SpikeCannonMove {
    static let move = PokemonMove(rawValue: "spike-cannon")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(20),
        hits: .range(2...5),
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Spike Cannon",
            .japanese: "とげキャノン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spikeCannon = SpikeCannonMove.definition
}
