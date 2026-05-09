import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みやぶる in Japanese.
    ///
    /// The localized name of this move is `"Foresight"` in English and
    /// `"みやぶる"` in Japanese.
    ///
    /// The move's raw value is `"foresight"`.
    static let foresight = ForesightMove.move
}

enum ForesightMove {
    static let move = PokemonMove(rawValue: "foresight")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
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
            .english: "Foresight",
            .japanese: "みやぶる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let foresight = ForesightMove.definition
}
