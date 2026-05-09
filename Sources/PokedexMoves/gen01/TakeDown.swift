import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とっしん in Japanese.
    ///
    /// The localized name of this move is `"Take Down"` in English and
    /// `"とっしん"` in Japanese.
    ///
    /// The move's raw value is `"take-down"`.
    static let takeDown = TakeDownMove.move
}

enum TakeDownMove {
    static let move = PokemonMove(rawValue: "take-down")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Take Down",
            .japanese: "とっしん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let takeDown = TakeDownMove.definition
}
