import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ３ぼんのや in Japanese.
    ///
    /// The localized name of this move is `"Triple Arrows"` in English and
    /// `"３ぼんのや"` in Japanese.
    ///
    /// The move's raw value is `"triple-arrows"`.
    static let tripleArrows = TripleArrowsMove.move
}

enum TripleArrowsMove {
    static let move = PokemonMove(rawValue: "triple-arrows")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Triple Arrows",
            .japanese: "３ぼんのや",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tripleArrows = TripleArrowsMove.definition
}
