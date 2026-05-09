import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あまごい in Japanese.
    ///
    /// The localized name of this move is `"Rain Dance"` in English and
    /// `"あまごい"` in Japanese.
    ///
    /// The move's raw value is `"rain-dance"`.
    static let rainDance = RainDanceMove.move
}

enum RainDanceMove {
    static let move = PokemonMove(rawValue: "rain-dance")
    static let parameters = PokemonMove.Parameters(
        type: .water,
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
            .english: "Rain Dance",
            .japanese: "あまごい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rainDance = RainDanceMove.definition
}
