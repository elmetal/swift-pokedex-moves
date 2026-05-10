import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マジカルアクセル in Japanese.
    ///
    /// The localized name of this move is `"Magical Torque"` in English and
    /// `"マジカルアクセル"` in Japanese.
    ///
    /// The move's raw value is `"magical-torque"`.
    static let magicalTorque = MagicalTorqueMove.move
}

enum MagicalTorqueMove {
    static let move = PokemonMove(rawValue: "magical-torque")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
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
            .english: "Magical Torque",
            .japanese: "マジカルアクセル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magicalTorque = MagicalTorqueMove.definition
}
