import Foundation

public extension PokemonMove {
    /// The Pokemon move known as にらみつける in Japanese.
    ///
    /// The localized name of this move is `"Leer"` in English and
    /// `"にらみつける"` in Japanese.
    ///
    /// The move's raw value is `"leer"`.
    static let leer = LeerMove.move
}

enum LeerMove {
    static let move = PokemonMove(rawValue: "leer")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Leer",
            .japanese: "にらみつける",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let leer = LeerMove.definition
}
