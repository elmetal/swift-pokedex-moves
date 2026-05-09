import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねごと in Japanese.
    ///
    /// The localized name of this move is `"Sleep Talk"` in English and
    /// `"ねごと"` in Japanese.
    ///
    /// The move's raw value is `"sleep-talk"`.
    static let sleepTalk = SleepTalkMove.move
}

enum SleepTalkMove {
    static let move = PokemonMove(rawValue: "sleep-talk")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Sleep Talk",
            .japanese: "ねごと",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sleepTalk = SleepTalkMove.definition
}
