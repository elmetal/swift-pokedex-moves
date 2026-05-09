import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たたきつける in Japanese.
    ///
    /// The localized name of this move is `"Slam"` in English and
    /// `"たたきつける"` in Japanese.
    ///
    /// The move's raw value is `"slam"`.
    static let slam = SlamMove.move
}

enum SlamMove {
    static let move = PokemonMove(rawValue: "slam")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(75),
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
            .english: "Slam",
            .japanese: "たたきつける",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let slam = SlamMove.definition
}
