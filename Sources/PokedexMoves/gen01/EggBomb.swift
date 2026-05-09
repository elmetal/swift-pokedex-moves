import Foundation

public extension PokemonMove {
    /// The Pokemon move known as タマゴばくだん in Japanese.
    ///
    /// The localized name of this move is `"Egg Bomb"` in English and
    /// `"タマゴばくだん"` in Japanese.
    ///
    /// The move's raw value is `"egg-bomb"`.
    static let eggBomb = EggBombMove.move
}

enum EggBombMove {
    static let move = PokemonMove(rawValue: "egg-bomb")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .physical,
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
            .english: "Egg Bomb",
            .japanese: "タマゴばくだん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let eggBomb = EggBombMove.definition
}
