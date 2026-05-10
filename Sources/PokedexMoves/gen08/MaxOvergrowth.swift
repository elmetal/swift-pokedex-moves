import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイソウゲン in Japanese.
    ///
    /// The localized name of this move is `"Max Overgrowth"` in English and
    /// `"ダイソウゲン"` in Japanese.
    ///
    /// The move's raw value is `"max-overgrowth"`.
    static let maxOvergrowth = MaxOvergrowthMove.move
}

enum MaxOvergrowthMove {
    static let move = PokemonMove(rawValue: "max-overgrowth")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
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
            .english: "Max Overgrowth",
            .japanese: "ダイソウゲン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxOvergrowth = MaxOvergrowthMove.definition
}
