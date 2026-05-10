import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スレッドトラップ in Japanese.
    ///
    /// The localized name of this move is `"Silk Trap"` in English and
    /// `"スレッドトラップ"` in Japanese.
    ///
    /// The move's raw value is `"silk-trap"`.
    static let silkTrap = SilkTrapMove.move
}

enum SilkTrapMove {
    static let move = PokemonMove(rawValue: "silk-trap")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
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
            .english: "Silk Trap",
            .japanese: "スレッドトラップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let silkTrap = SilkTrapMove.definition
}
