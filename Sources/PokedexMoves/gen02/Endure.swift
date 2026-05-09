import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こらえる in Japanese.
    ///
    /// The localized name of this move is `"Endure"` in English and
    /// `"こらえる"` in Japanese.
    ///
    /// The move's raw value is `"endure"`.
    static let endure = EndureMove.move
}

enum EndureMove {
    static let move = PokemonMove(rawValue: "endure")
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
            .english: "Endure",
            .japanese: "こらえる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let endure = EndureMove.definition
}
