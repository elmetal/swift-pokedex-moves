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
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
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
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
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
