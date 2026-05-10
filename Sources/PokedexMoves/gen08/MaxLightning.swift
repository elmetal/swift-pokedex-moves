import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイサンダー in Japanese.
    ///
    /// The localized name of this move is `"Max Lightning"` in English and
    /// `"ダイサンダー"` in Japanese.
    ///
    /// The move's raw value is `"max-lightning"`.
    static let maxLightning = MaxLightningMove.move
}

enum MaxLightningMove {
    static let move = PokemonMove(rawValue: "max-lightning")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
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
            .english: "Max Lightning",
            .japanese: "ダイサンダー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxLightning = MaxLightningMove.definition
}
