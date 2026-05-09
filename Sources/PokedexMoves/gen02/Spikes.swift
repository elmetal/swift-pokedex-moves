import Foundation

public extension PokemonMove {
    /// The Pokemon move known as まきびし in Japanese.
    ///
    /// The localized name of this move is `"Spikes"` in English and
    /// `"まきびし"` in Japanese.
    ///
    /// The move's raw value is `"spikes"`.
    static let spikes = SpikesMove.move
}

enum SpikesMove {
    static let move = PokemonMove(rawValue: "spikes")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .opposingSide
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
            .english: "Spikes",
            .japanese: "まきびし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spikes = SpikesMove.definition
}
