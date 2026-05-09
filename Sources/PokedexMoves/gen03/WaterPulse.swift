import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みずのはどう in Japanese.
    ///
    /// The localized name of this move is `"Water Pulse"` in English and
    /// `"みずのはどう"` in Japanese.
    ///
    /// The move's raw value is `"water-pulse"`.
    static let waterPulse = WaterPulseMove.move
}

enum WaterPulseMove {
    static let move = PokemonMove(rawValue: "water-pulse")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Water Pulse",
            .japanese: "みずのはどう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let waterPulse = WaterPulseMove.definition
}
