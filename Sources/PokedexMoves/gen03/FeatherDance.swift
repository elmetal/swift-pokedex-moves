import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フェザーダンス in Japanese.
    ///
    /// The localized name of this move is `"Feather Dance"` in English and
    /// `"フェザーダンス"` in Japanese.
    ///
    /// The move's raw value is `"feather-dance"`.
    static let featherDance = FeatherDanceMove.move
}

enum FeatherDanceMove {
    static let move = PokemonMove(rawValue: "feather-dance")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Feather Dance",
            .japanese: "フェザーダンス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let featherDance = FeatherDanceMove.definition
}
