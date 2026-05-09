import Foundation

public extension PokemonMove {
    /// The Pokemon move known as にどげり in Japanese.
    ///
    /// The localized name of this move is `"Double Kick"` in English and
    /// `"にどげり"` in Japanese.
    ///
    /// The move's raw value is `"double-kick"`.
    static let doubleKick = DoubleKick.move
}

enum DoubleKick {
    static let move = PokemonMove(rawValue: "double-kick")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 30,
        power: .fixed(30),
        hits: .fixed(2),
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
            .english: "Double Kick",
            .japanese: "にどげり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doubleKick = DoubleKick.definition
}

