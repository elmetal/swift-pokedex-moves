import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイロック in Japanese.
    ///
    /// The localized name of this move is `"Max Rockfall"` in English and
    /// `"ダイロック"` in Japanese.
    ///
    /// The move's raw value is `"max-rockfall"`.
    static let maxRockfall = MaxRockfallMove.move
}

enum MaxRockfallMove {
    static let move = PokemonMove(rawValue: "max-rockfall")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
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
            .english: "Max Rockfall",
            .japanese: "ダイロック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxRockfall = MaxRockfallMove.definition
}
