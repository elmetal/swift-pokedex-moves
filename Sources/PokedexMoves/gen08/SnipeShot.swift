import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねらいうち in Japanese.
    ///
    /// The localized name of this move is `"Snipe Shot"` in English and
    /// `"ねらいうち"` in Japanese.
    ///
    /// The move's raw value is `"snipe-shot"`.
    static let snipeShot = SnipeShotMove.move
}

enum SnipeShotMove {
    static let move = PokemonMove(rawValue: "snipe-shot")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 15,
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
            .english: "Snipe Shot",
            .japanese: "ねらいうち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let snipeShot = SnipeShotMove.definition
}
