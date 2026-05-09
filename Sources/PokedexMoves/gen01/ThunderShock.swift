import Foundation

public extension PokemonMove {
    /// The Pokemon move known as でんきショック in Japanese.
    ///
    /// The localized name of this move is `"Thunder Shock"` in English and
    /// `"でんきショック"` in Japanese.
    ///
    /// The move's raw value is `"thunder-shock"`.
    static let thunderShock = ThunderShockMove.move
}

enum ThunderShockMove {
    static let move = PokemonMove(rawValue: "thunder-shock")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 30,
        power: .fixed(40),
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
            .english: "Thunder Shock",
            .japanese: "でんきショック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunderShock = ThunderShockMove.definition
}
