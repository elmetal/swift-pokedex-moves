import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ボディプレス in Japanese.
    ///
    /// The localized name of this move is `"Body Press"` in English and
    /// `"ボディプレス"` in Japanese.
    ///
    /// The move's raw value is `"body-press"`.
    static let bodyPress = BodyPressMove.move
}

enum BodyPressMove {
    static let move = PokemonMove(rawValue: "body-press")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
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
            .english: "Body Press",
            .japanese: "ボディプレス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bodyPress = BodyPressMove.definition
}
