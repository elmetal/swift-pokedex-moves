import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドラゴンアロー in Japanese.
    ///
    /// The localized name of this move is `"Dragon Darts"` in English and
    /// `"ドラゴンアロー"` in Japanese.
    ///
    /// The move's raw value is `"dragon-darts"`.
    static let dragonDarts = DragonDartsMove.move
}

enum DragonDartsMove {
    static let move = PokemonMove(rawValue: "dragon-darts")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .fixed(50),
        hits: .fixed(2),
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
            .english: "Dragon Darts",
            .japanese: "ドラゴンアロー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonDarts = DragonDartsMove.definition
}
