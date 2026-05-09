import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あさのひざし in Japanese.
    ///
    /// The localized name of this move is `"Morning Sun"` in English and
    /// `"あさのひざし"` in Japanese.
    ///
    /// The move's raw value is `"morning-sun"`.
    static let morningSun = MorningSunMove.move
}

enum MorningSunMove {
    static let move = PokemonMove(rawValue: "morning-sun")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Morning Sun",
            .japanese: "あさのひざし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let morningSun = MorningSunMove.definition
}
