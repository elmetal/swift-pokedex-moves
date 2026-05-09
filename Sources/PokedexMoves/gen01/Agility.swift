import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こうそくいどう in Japanese.
    ///
    /// The localized name of this move is `"Agility"` in English and
    /// `"こうそくいどう"` in Japanese.
    ///
    /// The move's raw value is `"agility"`.
    static let agility = AgilityMove.move
}

enum AgilityMove {
    static let move = PokemonMove(rawValue: "agility")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 30,
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
            .english: "Agility",
            .japanese: "こうそくいどう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let agility = AgilityMove.definition
}
