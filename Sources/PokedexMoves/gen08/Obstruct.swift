import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブロッキング in Japanese.
    ///
    /// The localized name of this move is `"Obstruct"` in English and
    /// `"ブロッキング"` in Japanese.
    ///
    /// The move's raw value is `"obstruct"`.
    static let obstruct = ObstructMove.move
}

enum ObstructMove {
    static let move = PokemonMove(rawValue: "obstruct")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 4,
        category: .status,
        target: .user
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
            .english: "Obstruct",
            .japanese: "ブロッキング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let obstruct = ObstructMove.definition
}
