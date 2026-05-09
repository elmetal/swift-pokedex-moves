import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きあいだめ in Japanese.
    ///
    /// The localized name of this move is `"Focus Energy"` in English and
    /// `"きあいだめ"` in Japanese.
    ///
    /// The move's raw value is `"focus-energy"`.
    static let focusEnergy = FocusEnergyMove.move
}

enum FocusEnergyMove {
    static let move = PokemonMove(rawValue: "focus-energy")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Focus Energy",
            .japanese: "きあいだめ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let focusEnergy = FocusEnergyMove.definition
}
