import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイワーム in Japanese.
    ///
    /// The localized name of this move is `"Max Flutterby"` in English and
    /// `"ダイワーム"` in Japanese.
    ///
    /// The move's raw value is `"max-flutterby"`.
    static let maxFlutterby = MaxFlutterbyMove.move
}

enum MaxFlutterbyMove {
    static let move = PokemonMove(rawValue: "max-flutterby")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
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
            .english: "Max Flutterby",
            .japanese: "ダイワーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxFlutterby = MaxFlutterbyMove.definition
}
