import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どくばり in Japanese.
    ///
    /// The localized name of this move is `"Poison Sting"` in English and
    /// `"どくばり"` in Japanese.
    ///
    /// The move's raw value is `"poison-sting"`.
    static let poisonSting = PoisonStingMove.move
}

enum PoisonStingMove {
    static let move = PokemonMove(rawValue: "poison-sting")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 35,
        power: .fixed(15),
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
            .english: "Poison Sting",
            .japanese: "どくばり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let poisonSting = PoisonStingMove.definition
}
