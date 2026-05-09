import Foundation

public extension PokemonMove {
    /// The Pokemon move known as カウンター in Japanese.
    ///
    /// The localized name of this move is `"Counter"` in English and
    /// `"カウンター"` in Japanese.
    ///
    /// The move's raw value is `"counter"`.
    static let counter = CounterMove.move
}

enum CounterMove {
    static let move = PokemonMove(rawValue: "counter")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: -5,
        category: .physical,
        target: .move
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
            .english: "Counter",
            .japanese: "カウンター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let counter = CounterMove.definition
}
