import Foundation

public extension PokemonMove {
    /// The Pokemon move known as りゅうのいぶき in Japanese.
    ///
    /// The localized name of this move is `"Dragon Breath"` in English and
    /// `"りゅうのいぶき"` in Japanese.
    ///
    /// The move's raw value is `"dragon-breath"`.
    static let dragonBreath = DragonBreathMove.move
}

enum DragonBreathMove {
    static let move = PokemonMove(rawValue: "dragon-breath")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
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
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Dragon Breath",
            .japanese: "りゅうのいぶき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonBreath = DragonBreathMove.definition
}
