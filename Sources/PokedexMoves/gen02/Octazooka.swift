import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オクタンほう in Japanese.
    ///
    /// The localized name of this move is `"Octazooka"` in English and
    /// `"オクタンほう"` in Japanese.
    ///
    /// The move's raw value is `"octazooka"`.
    static let octazooka = OctazookaMove.move
}

enum OctazookaMove {
    static let move = PokemonMove(rawValue: "octazooka")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
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
            .english: "Octazooka",
            .japanese: "オクタンほう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let octazooka = OctazookaMove.definition
}
