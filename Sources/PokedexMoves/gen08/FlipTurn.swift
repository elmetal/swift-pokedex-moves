import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クイックターン in Japanese.
    ///
    /// The localized name of this move is `"Flip Turn"` in English and
    /// `"クイックターン"` in Japanese.
    ///
    /// The move's raw value is `"flip-turn"`.
    static let flipTurn = FlipTurnMove.move
}

enum FlipTurnMove {
    static let move = PokemonMove(rawValue: "flip-turn")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(60),
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
            .english: "Flip Turn",
            .japanese: "クイックターン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flipTurn = FlipTurnMove.definition
}
