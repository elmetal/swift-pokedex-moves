import Foundation

public extension PokemonMove {
    /// The Pokemon move known as でんこうそうげき in Japanese.
    ///
    /// The localized name of this move is `"Double Shock"` in English and
    /// `"でんこうそうげき"` in Japanese.
    ///
    /// The move's raw value is `"double-shock"`.
    static let doubleShock = DoubleShockMove.move
}

enum DoubleShockMove {
    static let move = PokemonMove(rawValue: "double-shock")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 5,
        power: .fixed(120),
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
            .english: "Double Shock",
            .japanese: "でんこうそうげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doubleShock = DoubleShockMove.definition
}
