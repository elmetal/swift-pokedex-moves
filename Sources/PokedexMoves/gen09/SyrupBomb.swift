import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みずあめボム in Japanese.
    ///
    /// The localized name of this move is `"Syrup Bomb"` in English and
    /// `"みずあめボム"` in Japanese.
    ///
    /// The move's raw value is `"syrup-bomb"`.
    static let syrupBomb = SyrupBombMove.move
}

enum SyrupBombMove {
    static let move = PokemonMove(rawValue: "syrup-bomb")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
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
            .english: "Syrup Bomb",
            .japanese: "みずあめボム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let syrupBomb = SyrupBombMove.definition
}
