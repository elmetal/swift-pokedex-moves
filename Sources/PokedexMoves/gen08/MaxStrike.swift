import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイアタック in Japanese.
    ///
    /// The localized name of this move is `"Max Strike"` in English and
    /// `"ダイアタック"` in Japanese.
    ///
    /// The move's raw value is `"max-strike"`.
    static let maxStrike = MaxStrikeMove.move
}

enum MaxStrikeMove {
    static let move = PokemonMove(rawValue: "max-strike")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Max Strike",
            .japanese: "ダイアタック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxStrike = MaxStrikeMove.definition
}
