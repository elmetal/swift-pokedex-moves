import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しおふき in Japanese.
    ///
    /// The localized name of this move is `"Water Spout"` in English and
    /// `"しおふき"` in Japanese.
    ///
    /// The move's raw value is `"water-spout"`.
    static let waterSpout = WaterSpoutMove.move
}

enum WaterSpoutMove {
    static let move = PokemonMove(rawValue: "water-spout")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Water Spout",
            .japanese: "しおふき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let waterSpout = WaterSpoutMove.definition
}
