import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かたくなる in Japanese.
    ///
    /// The localized name of this move is `"Harden"` in English and
    /// `"かたくなる"` in Japanese.
    ///
    /// The move's raw value is `"harden"`.
    static let harden = HardenMove.move
}

enum HardenMove {
    static let move = PokemonMove(rawValue: "harden")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Harden",
            .japanese: "かたくなる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let harden = HardenMove.definition
}
