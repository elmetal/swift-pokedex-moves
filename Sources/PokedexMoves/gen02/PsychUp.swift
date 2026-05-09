import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じこあんじ in Japanese.
    ///
    /// The localized name of this move is `"Psych Up"` in English and
    /// `"じこあんじ"` in Japanese.
    ///
    /// The move's raw value is `"psych-up"`.
    static let psychUp = PsychUpMove.move
}

enum PsychUpMove {
    static let move = PokemonMove(rawValue: "psych-up")
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
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Psych Up",
            .japanese: "じこあんじ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psychUp = PsychUpMove.definition
}
