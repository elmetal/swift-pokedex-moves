import Foundation

public extension PokemonMove {
    /// The Pokemon move known as このゆびとまれ in Japanese.
    ///
    /// The localized name of this move is `"Follow Me"` in English and
    /// `"このゆびとまれ"` in Japanese.
    ///
    /// The move's raw value is `"follow-me"`.
    static let followMe = FollowMeMove.move
}

enum FollowMeMove {
    static let move = PokemonMove(rawValue: "follow-me")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 2,
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
            .english: "Follow Me",
            .japanese: "このゆびとまれ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let followMe = FollowMeMove.definition
}
