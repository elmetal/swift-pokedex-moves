import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドラゴンエール in Japanese.
    ///
    /// The localized name of this move is `"Dragon Cheer"` in English and
    /// `"ドラゴンエール"` in Japanese.
    ///
    /// The move's raw value is `"dragon-cheer"`.
    static let dragonCheer = DragonCheerMove.move
}

enum DragonCheerMove {
    static let move = PokemonMove(rawValue: "dragon-cheer")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .allies
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Dragon Cheer",
            .japanese: "ドラゴンエール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonCheer = DragonCheerMove.definition
}
