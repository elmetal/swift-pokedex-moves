import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ワイドフォース in Japanese.
    ///
    /// The localized name of this move is `"Expanding Force"` in English and
    /// `"ワイドフォース"` in Japanese.
    ///
    /// The move's raw value is `"expanding-force"`.
    static let expandingForce = ExpandingForceMove.move
}

enum ExpandingForceMove {
    static let move = PokemonMove(rawValue: "expanding-force")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Expanding Force",
            .japanese: "ワイドフォース",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let expandingForce = ExpandingForceMove.definition
}
