import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うらみ in Japanese.
    ///
    /// The localized name of this move is `"Spite"` in English and
    /// `"うらみ"` in Japanese.
    ///
    /// The move's raw value is `"spite"`.
    static let spite = SpiteMove.move
}

enum SpiteMove {
    static let move = PokemonMove(rawValue: "spite")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Spite",
            .japanese: "うらみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spite = SpiteMove.definition
}
