import Foundation

public extension PokemonMove {
    /// The Pokemon move known as にほんばれ in Japanese.
    ///
    /// The localized name of this move is `"Sunny Day"` in English and
    /// `"にほんばれ"` in Japanese.
    ///
    /// The move's raw value is `"sunny-day"`.
    static let sunnyDay = SunnyDayMove.move
}

enum SunnyDayMove {
    static let move = PokemonMove(rawValue: "sunny-day")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
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
            .english: "Sunny Day",
            .japanese: "にほんばれ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sunnyDay = SunnyDayMove.definition
}
