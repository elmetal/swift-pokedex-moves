import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メロメロ in Japanese.
    ///
    /// The localized name of this move is `"Attract"` in English and
    /// `"メロメロ"` in Japanese.
    ///
    /// The move's raw value is `"attract"`.
    static let attract = AttractMove.move
}

enum AttractMove {
    static let move = PokemonMove(rawValue: "attract")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
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
            .english: "Attract",
            .japanese: "メロメロ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let attract = AttractMove.definition
}
