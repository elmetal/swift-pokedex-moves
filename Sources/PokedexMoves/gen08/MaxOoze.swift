import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイアシッド in Japanese.
    ///
    /// The localized name of this move is `"Max Ooze"` in English and
    /// `"ダイアシッド"` in Japanese.
    ///
    /// The move's raw value is `"max-ooze"`.
    static let maxOoze = MaxOozeMove.move
}

enum MaxOozeMove {
    static let move = PokemonMove(rawValue: "max-ooze")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
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
            .english: "Max Ooze",
            .japanese: "ダイアシッド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxOoze = MaxOozeMove.definition
}
