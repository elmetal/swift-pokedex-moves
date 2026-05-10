import Foundation

public extension PokemonMove {
    /// The Pokemon move known as バーンアクセル in Japanese.
    ///
    /// The localized name of this move is `"Blazing Torque"` in English and
    /// `"バーンアクセル"` in Japanese.
    ///
    /// The move's raw value is `"blazing-torque"`.
    static let blazingTorque = BlazingTorqueMove.move
}

enum BlazingTorqueMove {
    static let move = PokemonMove(rawValue: "blazing-torque")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
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
            .english: "Blazing Torque",
            .japanese: "バーンアクセル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let blazingTorque = BlazingTorqueMove.definition
}
