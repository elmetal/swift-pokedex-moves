import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なまける in Japanese.
    ///
    /// The localized name of this move is `"Slack Off"` in English and
    /// `"なまける"` in Japanese.
    ///
    /// The move's raw value is `"slack-off"`.
    static let slackOff = SlackOffMove.move
}

enum SlackOffMove {
    static let move = PokemonMove(rawValue: "slack-off")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Slack Off",
            .japanese: "なまける",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let slackOff = SlackOffMove.definition
}
