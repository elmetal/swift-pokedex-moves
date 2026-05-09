import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ロックオン in Japanese.
    ///
    /// The localized name of this move is `"Lock-On"` in English and
    /// `"ロックオン"` in Japanese.
    ///
    /// The move's raw value is `"lock-on"`.
    static let lockOn = LockOnMove.move
}

enum LockOnMove {
    static let move = PokemonMove(rawValue: "lock-on")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Lock-On",
            .japanese: "ロックオン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lockOn = LockOnMove.definition
}
