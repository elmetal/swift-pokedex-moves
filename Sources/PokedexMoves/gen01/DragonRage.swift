import Foundation

public extension PokemonMove {
    /// The Pokemon move known as りゅうのいかり in Japanese.
    ///
    /// The localized name of this move is `"Dragon Rage"` in English and
    /// `"りゅうのいかり"` in Japanese.
    ///
    /// The move's raw value is `"dragon-rage"`.
    static let dragonRage = DragonRageMove.move
}

enum DragonRageMove {
    static let move = PokemonMove(rawValue: "dragon-rage")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Dragon Rage",
            .japanese: "りゅうのいかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonRage = DragonRageMove.definition
}
