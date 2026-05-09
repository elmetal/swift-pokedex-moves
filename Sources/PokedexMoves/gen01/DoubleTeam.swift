import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かげぶんしん in Japanese.
    ///
    /// The localized name of this move is `"Double Team"` in English and
    /// `"かげぶんしん"` in Japanese.
    ///
    /// The move's raw value is `"double-team"`.
    static let doubleTeam = DoubleTeamMove.move
}

enum DoubleTeamMove {
    static let move = PokemonMove(rawValue: "double-team")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
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
            .english: "Double Team",
            .japanese: "かげぶんしん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doubleTeam = DoubleTeamMove.definition
}
