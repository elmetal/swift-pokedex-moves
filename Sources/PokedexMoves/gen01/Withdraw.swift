import Foundation

public extension PokemonMove {
    /// The Pokemon move known as からにこもる in Japanese.
    ///
    /// The localized name of this move is `"Withdraw"` in English and
    /// `"からにこもる"` in Japanese.
    ///
    /// The move's raw value is `"withdraw"`.
    static let withdraw = WithdrawMove.move
}

enum WithdrawMove {
    static let move = PokemonMove(rawValue: "withdraw")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 40,
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
            .english: "Withdraw",
            .japanese: "からにこもる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let withdraw = WithdrawMove.definition
}
