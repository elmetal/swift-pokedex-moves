import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひけん・ちえなみ in Japanese.
    ///
    /// The localized name of this move is `"Ceaseless Edge"` in English and
    /// `"ひけん・ちえなみ"` in Japanese.
    ///
    /// The move's raw value is `"ceaseless-edge"`.
    static let ceaselessEdge = CeaselessEdgeMove.move
}

enum CeaselessEdgeMove {
    static let move = PokemonMove(rawValue: "ceaseless-edge")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Ceaseless Edge",
            .japanese: "ひけん・ちえなみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ceaselessEdge = CeaselessEdgeMove.definition
}
