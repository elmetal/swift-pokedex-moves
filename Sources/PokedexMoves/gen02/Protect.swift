import Foundation

public extension PokemonMove {
    /// The Pokemon move known as まもる in Japanese.
    ///
    /// The localized name of this move is `"Protect"` in English and
    /// `"まもる"` in Japanese.
    ///
    /// The move's raw value is `"protect"`.
    static let protect = ProtectMove.move
}

enum ProtectMove {
    static let move = PokemonMove(rawValue: "protect")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
    )
    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .champions]),
                parameters: parameters1
            ),
            .init(
                versionGroups: [.champions],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Protect",
            .japanese: "まもる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let protect = ProtectMove.definition
}
