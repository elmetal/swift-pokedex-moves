import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイアイス in Japanese.
    ///
    /// The localized name of this move is `"Max Hailstorm"` in English and
    /// `"ダイアイス"` in Japanese.
    ///
    /// The move's raw value is `"max-hailstorm"`.
    static let maxHailstorm = MaxHailstormMove.move
}

enum MaxHailstormMove {
    static let move = PokemonMove(rawValue: "max-hailstorm")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Max Hailstorm",
            .japanese: "ダイアイス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxHailstorm = MaxHailstormMove.definition
}
