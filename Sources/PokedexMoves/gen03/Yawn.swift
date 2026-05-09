import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あくび in Japanese.
    ///
    /// The localized name of this move is `"Yawn"` in English and
    /// `"あくび"` in Japanese.
    ///
    /// The move's raw value is `"yawn"`.
    static let yawn = YawnMove.move
}

enum YawnMove {
    static let move = PokemonMove(rawValue: "yawn")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
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
            .english: "Yawn",
            .japanese: "あくび",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let yawn = YawnMove.definition
}
