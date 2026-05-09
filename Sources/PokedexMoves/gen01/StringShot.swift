import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いとをはく in Japanese.
    ///
    /// The localized name of this move is `"String Shot"` in English and
    /// `"いとをはく"` in Japanese.
    ///
    /// The move's raw value is `"string-shot"`.
    static let stringShot = StringShotMove.move
}

enum StringShotMove {
    static let move = PokemonMove(rawValue: "string-shot")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
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
            .english: "String Shot",
            .japanese: "いとをはく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stringShot = StringShotMove.definition
}
