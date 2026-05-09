import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おうふくビンタ in Japanese.
    ///
    /// The localized name of this move is `"Double Slap"` in English and
    /// `"おうふくビンタ"` in Japanese.
    ///
    /// The move's raw value is `"double-slap"`.
    static let doubleSlap = DoubleSlapMove.move
}

enum DoubleSlapMove {
    static let move = PokemonMove(rawValue: "double-slap")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(15),
        hits: .range(2...5),
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
            .english: "Double Slap",
            .japanese: "おうふくビンタ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doubleSlap = DoubleSlapMove.definition
}
