import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねむりごな in Japanese.
    ///
    /// The localized name of this move is `"Sleep Powder"` in English and
    /// `"ねむりごな"` in Japanese.
    ///
    /// The move's raw value is `"sleep-powder"`.
    static let sleepPowder = SleepPowderMove.move
}

enum SleepPowderMove {
    static let move = PokemonMove(rawValue: "sleep-powder")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
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
            .english: "Sleep Powder",
            .japanese: "ねむりごな",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sleepPowder = SleepPowderMove.definition
}
