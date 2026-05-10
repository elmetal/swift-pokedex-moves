import Foundation

public extension PokemonMove {
    /// The Pokemon move known as パワーシフト in Japanese.
    ///
    /// The localized name of this move is `"Power Shift"` in English and
    /// `"パワーシフト"` in Japanese.
    ///
    /// The move's raw value is `"power-shift"`.
    static let powerShift = PowerShiftMove.move
}

enum PowerShiftMove {
    static let move = PokemonMove(rawValue: "power-shift")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Power Shift",
            .japanese: "パワーシフト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powerShift = PowerShiftMove.definition
}
