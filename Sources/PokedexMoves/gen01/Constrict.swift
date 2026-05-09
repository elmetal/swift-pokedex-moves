import Foundation

public extension PokemonMove {
    /// The Pokemon move known as からみつく in Japanese.
    ///
    /// The localized name of this move is `"Constrict"` in English and
    /// `"からみつく"` in Japanese.
    ///
    /// The move's raw value is `"constrict"`.
    static let constrict = ConstrictMove.move
}

enum ConstrictMove {
    static let move = PokemonMove(rawValue: "constrict")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 35,
        power: .fixed(10),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Constrict",
            .japanese: "からみつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let constrict = ConstrictMove.definition
}
