import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねむる in Japanese.
    ///
    /// The localized name of this move is `"Rest"` in English and
    /// `"ねむる"` in Japanese.
    ///
    /// The move's raw value is `"rest"`.
    static let rest = RestMove.move
}

enum RestMove {
    static let move = PokemonMove(rawValue: "rest")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
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
            .english: "Rest",
            .japanese: "ねむる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rest = RestMove.definition
}
