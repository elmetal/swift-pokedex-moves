import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しろいきり in Japanese.
    ///
    /// The localized name of this move is `"Mist"` in English and
    /// `"しろいきり"` in Japanese.
    ///
    /// The move's raw value is `"mist"`.
    static let mist = MistMove.move
}

enum MistMove {
    static let move = PokemonMove(rawValue: "mist")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
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
            .english: "Mist",
            .japanese: "しろいきり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mist = MistMove.definition
}
