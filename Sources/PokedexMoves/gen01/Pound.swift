import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はたく in Japanese.
    ///
    /// The localized name of this move is `"Pound"` in English and
    /// `"はたく"` in Japanese.
    ///
    /// The move's raw value is `"pound"`.
    static let pound = PoundMove.move
}

enum PoundMove {
    static let move = PokemonMove(rawValue: "pound")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 35,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Pound",
            .japanese: "はたく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pound = PoundMove.definition
}
