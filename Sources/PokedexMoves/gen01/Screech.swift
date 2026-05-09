import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いやなおと in Japanese.
    ///
    /// The localized name of this move is `"Screech"` in English and
    /// `"いやなおと"` in Japanese.
    ///
    /// The move's raw value is `"screech"`.
    static let screech = ScreechMove.move
}

enum ScreechMove {
    static let move = PokemonMove(rawValue: "screech")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .status,
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
            .english: "Screech",
            .japanese: "いやなおと",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let screech = ScreechMove.definition
}
