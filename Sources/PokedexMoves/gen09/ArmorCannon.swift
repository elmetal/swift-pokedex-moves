import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アーマーキャノン in Japanese.
    ///
    /// The localized name of this move is `"Armor Cannon"` in English and
    /// `"アーマーキャノン"` in Japanese.
    ///
    /// The move's raw value is `"armor-cannon"`.
    static let armorCannon = ArmorCannonMove.move
}

enum ArmorCannonMove {
    static let move = PokemonMove(rawValue: "armor-cannon")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Armor Cannon",
            .japanese: "アーマーキャノン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let armorCannon = ArmorCannonMove.definition
}
