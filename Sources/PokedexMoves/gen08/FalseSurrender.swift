import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どげざつき in Japanese.
    ///
    /// The localized name of this move is `"False Surrender"` in English and
    /// `"どげざつき"` in Japanese.
    ///
    /// The move's raw value is `"false-surrender"`.
    static let falseSurrender = FalseSurrenderMove.move
}

enum FalseSurrenderMove {
    static let move = PokemonMove(rawValue: "false-surrender")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(80),
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
            .english: "False Surrender",
            .japanese: "どげざつき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let falseSurrender = FalseSurrenderMove.definition
}
