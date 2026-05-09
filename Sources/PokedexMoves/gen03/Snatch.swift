import Foundation

public extension PokemonMove {
    /// The Pokemon move known as よこどり in Japanese.
    ///
    /// The localized name of this move is `"Snatch"` in English and
    /// `"よこどり"` in Japanese.
    ///
    /// The move's raw value is `"snatch"`.
    static let snatch = SnatchMove.move
}

enum SnatchMove {
    static let move = PokemonMove(rawValue: "snatch")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Snatch",
            .japanese: "よこどり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let snatch = SnatchMove.definition
}
