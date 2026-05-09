import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どくのこな in Japanese.
    ///
    /// The localized name of this move is `"Poison Powder"` in English and
    /// `"どくのこな"` in Japanese.
    ///
    /// The move's raw value is `"poison-powder"`.
    static let poisonPowder = PoisonPowderMove.move
}

enum PoisonPowderMove {
    static let move = PokemonMove(rawValue: "poison-powder")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 35,
        power: .none,
        hits: .one,
        accuracy: .percent(75),
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
            .english: "Poison Powder",
            .japanese: "どくのこな",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let poisonPowder = PoisonPowderMove.definition
}
