import Foundation

public extension PokemonMove {
    /// The Pokemon move known as えんまく in Japanese.
    ///
    /// The localized name of this move is `"Smokescreen"` in English and
    /// `"えんまく"` in Japanese.
    ///
    /// The move's raw value is `"smokescreen"`.
    static let smokescreen = SmokescreenMove.move
}

enum SmokescreenMove {
    static let move = PokemonMove(rawValue: "smokescreen")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Smokescreen",
            .japanese: "えんまく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let smokescreen = SmokescreenMove.definition
}
