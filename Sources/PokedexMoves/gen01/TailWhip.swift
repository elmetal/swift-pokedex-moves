import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しっぽをふる in Japanese.
    ///
    /// The localized name of this move is `"Tail Whip"` in English and
    /// `"しっぽをふる"` in Japanese.
    ///
    /// The move's raw value is `"tail-whip"`.
    static let tailWhip = TailWhipMove.move
}

enum TailWhipMove {
    static let move = PokemonMove(rawValue: "tail-whip")
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
            .english: "Tail Whip",
            .japanese: "しっぽをふる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tailWhip = TailWhipMove.definition
}
