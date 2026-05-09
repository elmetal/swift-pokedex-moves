import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みがわり in Japanese.
    ///
    /// The localized name of this move is `"Substitute"` in English and
    /// `"みがわり"` in Japanese.
    ///
    /// The move's raw value is `"substitute"`.
    static let substitute = SubstituteMove.move
}

enum SubstituteMove {
    static let move = PokemonMove(rawValue: "substitute")
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
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Substitute",
            .japanese: "みがわり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let substitute = SubstituteMove.definition
}
