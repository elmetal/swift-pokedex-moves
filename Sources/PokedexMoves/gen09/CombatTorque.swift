import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ファイトアクセル in Japanese.
    ///
    /// The localized name of this move is `"Combat Torque"` in English and
    /// `"ファイトアクセル"` in Japanese.
    ///
    /// The move's raw value is `"combat-torque"`.
    static let combatTorque = CombatTorqueMove.move
}

enum CombatTorqueMove {
    static let move = PokemonMove(rawValue: "combat-torque")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Combat Torque",
            .japanese: "ファイトアクセル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let combatTorque = CombatTorqueMove.definition
}
