import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アイアンテール in Japanese.
    ///
    /// The localized name of this move is `"Iron Tail"` in English and
    /// `"アイアンテール"` in Japanese.
    ///
    /// The move's raw value is `"iron-tail"`.
    static let ironTail = IronTailMove.move
}

enum IronTailMove {
    static let move = PokemonMove(rawValue: "iron-tail")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 15,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(75),
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
            .english: "Iron Tail",
            .japanese: "アイアンテール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ironTail = IronTailMove.definition
}
