import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みねうち in Japanese.
    ///
    /// The localized name of this move is `"False Swipe"` in English and
    /// `"みねうち"` in Japanese.
    ///
    /// The move's raw value is `"false-swipe"`.
    static let falseSwipe = FalseSwipeMove.move
}

enum FalseSwipeMove {
    static let move = PokemonMove(rawValue: "false-swipe")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "False Swipe",
            .japanese: "みねうち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let falseSwipe = FalseSwipeMove.definition
}
