import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダークアクセル in Japanese.
    ///
    /// The localized name of this move is `"Wicked Torque"` in English and
    /// `"ダークアクセル"` in Japanese.
    ///
    /// The move's raw value is `"wicked-torque"`.
    static let wickedTorque = WickedTorqueMove.move
}

enum WickedTorqueMove {
    static let move = PokemonMove(rawValue: "wicked-torque")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(80),
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
            .english: "Wicked Torque",
            .japanese: "ダークアクセル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wickedTorque = WickedTorqueMove.definition
}
