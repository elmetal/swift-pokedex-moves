import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイフェアリー in Japanese.
    ///
    /// The localized name of this move is `"Max Starfall"` in English and
    /// `"ダイフェアリー"` in Japanese.
    ///
    /// The move's raw value is `"max-starfall"`.
    static let maxStarfall = MaxStarfallMove.move
}

enum MaxStarfallMove {
    static let move = PokemonMove(rawValue: "max-starfall")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
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
            .english: "Max Starfall",
            .japanese: "ダイフェアリー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxStarfall = MaxStarfallMove.definition
}
