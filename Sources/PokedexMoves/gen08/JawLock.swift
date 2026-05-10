import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くらいつく in Japanese.
    ///
    /// The localized name of this move is `"Jaw Lock"` in English and
    /// `"くらいつく"` in Japanese.
    ///
    /// The move's raw value is `"jaw-lock"`.
    static let jawLock = JawLockMove.move
}

enum JawLockMove {
    static let move = PokemonMove(rawValue: "jaw-lock")
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
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Jaw Lock",
            .japanese: "くらいつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let jawLock = JawLockMove.definition
}
