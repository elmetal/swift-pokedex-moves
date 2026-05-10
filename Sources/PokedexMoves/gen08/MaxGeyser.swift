import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイストリーム in Japanese.
    ///
    /// The localized name of this move is `"Max Geyser"` in English and
    /// `"ダイストリーム"` in Japanese.
    ///
    /// The move's raw value is `"max-geyser"`.
    static let maxGeyser = MaxGeyserMove.move
}

enum MaxGeyserMove {
    static let move = PokemonMove(rawValue: "max-geyser")
    static let parameters = PokemonMove.Parameters(
        type: .water,
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
            .english: "Max Geyser",
            .japanese: "ダイストリーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxGeyser = MaxGeyserMove.definition
}
