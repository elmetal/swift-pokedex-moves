import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねこのて in Japanese.
    ///
    /// The localized name of this move is `"Assist"` in English and
    /// `"ねこのて"` in Japanese.
    ///
    /// The move's raw value is `"assist"`.
    static let assist = AssistMove.move
}

enum AssistMove {
    static let move = PokemonMove(rawValue: "assist")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
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
            .english: "Assist",
            .japanese: "ねこのて",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let assist = AssistMove.definition
}
