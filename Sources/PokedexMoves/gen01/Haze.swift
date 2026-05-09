import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くろいきり in Japanese.
    ///
    /// The localized name of this move is `"Haze"` in English and
    /// `"くろいきり"` in Japanese.
    ///
    /// The move's raw value is `"haze"`.
    static let haze = HazeMove.move
}

enum HazeMove {
    static let move = PokemonMove(rawValue: "haze")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
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
            .english: "Haze",
            .japanese: "くろいきり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let haze = HazeMove.definition
}
