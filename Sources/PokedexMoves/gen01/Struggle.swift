import Foundation

public extension PokemonMove {
    /// The Pokemon move known as わるあがき in Japanese.
    ///
    /// The localized name of this move is `"Struggle"` in English and
    /// `"わるあがき"` in Japanese.
    ///
    /// The move's raw value is `"struggle"`.
    static let struggle = StruggleMove.move
}

enum StruggleMove {
    static let move = PokemonMove(rawValue: "struggle")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 1,
        power: .fixed(50),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
        target: .randomOpposingPokemon
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
            .english: "Struggle",
            .japanese: "わるあがき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let struggle = StruggleMove.definition
}
