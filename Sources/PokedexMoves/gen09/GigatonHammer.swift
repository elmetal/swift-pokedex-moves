import Foundation

public extension PokemonMove {
    /// The Pokemon move known as デカハンマー in Japanese.
    ///
    /// The localized name of this move is `"Gigaton Hammer"` in English and
    /// `"デカハンマー"` in Japanese.
    ///
    /// The move's raw value is `"gigaton-hammer"`.
    static let gigatonHammer = GigatonHammerMove.move
}

enum GigatonHammerMove {
    static let move = PokemonMove(rawValue: "gigaton-hammer")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(160),
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
            .english: "Gigaton Hammer",
            .japanese: "デカハンマー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gigatonHammer = GigatonHammerMove.definition
}
