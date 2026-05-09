import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みきり in Japanese.
    ///
    /// The localized name of this move is `"Detect"` in English and
    /// `"みきり"` in Japanese.
    ///
    /// The move's raw value is `"detect"`.
    static let detect = DetectMove.move
}

enum DetectMove {
    static let move = PokemonMove(rawValue: "detect")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Detect",
            .japanese: "みきり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let detect = DetectMove.definition
}
