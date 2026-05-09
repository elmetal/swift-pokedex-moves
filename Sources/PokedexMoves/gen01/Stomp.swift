import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふみつけ in Japanese.
    ///
    /// The localized name of this move is `"Stomp"` in English and
    /// `"ふみつけ"` in Japanese.
    ///
    /// The move's raw value is `"stomp"`.
    static let stomp = StompMove.move
}

enum StompMove {
    static let move = PokemonMove(rawValue: "stomp")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(65),
        hits: .one,
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
            .english: "Stomp",
            .japanese: "ふみつけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stomp = StompMove.definition
}
