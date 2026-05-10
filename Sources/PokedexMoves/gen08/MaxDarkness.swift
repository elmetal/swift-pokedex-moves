import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイアーク in Japanese.
    ///
    /// The localized name of this move is `"Max Darkness"` in English and
    /// `"ダイアーク"` in Japanese.
    ///
    /// The move's raw value is `"max-darkness"`.
    static let maxDarkness = MaxDarknessMove.move
}

enum MaxDarknessMove {
    static let move = PokemonMove(rawValue: "max-darkness")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
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
            .english: "Max Darkness",
            .japanese: "ダイアーク",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxDarkness = MaxDarknessMove.definition
}
