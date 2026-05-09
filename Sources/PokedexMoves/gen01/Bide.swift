import Foundation

public extension PokemonMove {
    /// The Pokemon move known as がまん in Japanese.
    ///
    /// The localized name of this move is `"Bide"` in English and
    /// `"がまん"` in Japanese.
    ///
    /// The move's raw value is `"bide"`.
    static let bide = BideMove.move
}

enum BideMove {
    static let move = PokemonMove(rawValue: "bide")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .notApplicable,
        priority: 1,
        category: .physical,
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
            .english: "Bide",
            .japanese: "がまん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bide = BideMove.definition
}
