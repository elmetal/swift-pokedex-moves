import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイバーン in Japanese.
    ///
    /// The localized name of this move is `"Max Flare"` in English and
    /// `"ダイバーン"` in Japanese.
    ///
    /// The move's raw value is `"max-flare"`.
    static let maxFlare = MaxFlareMove.move
}

enum MaxFlareMove {
    static let move = PokemonMove(rawValue: "max-flare")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
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
            .english: "Max Flare",
            .japanese: "ダイバーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxFlare = MaxFlareMove.definition
}
