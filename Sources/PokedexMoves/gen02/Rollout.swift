import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ころがる in Japanese.
    ///
    /// The localized name of this move is `"Rollout"` in English and
    /// `"ころがる"` in Japanese.
    ///
    /// The move's raw value is `"rollout"`.
    static let rollout = RolloutMove.move
}

enum RolloutMove {
    static let move = PokemonMove(rawValue: "rollout")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 20,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Rollout",
            .japanese: "ころがる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rollout = RolloutMove.definition
}
