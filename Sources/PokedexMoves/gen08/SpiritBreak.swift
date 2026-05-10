import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ソウルクラッシュ in Japanese.
    ///
    /// The localized name of this move is `"Spirit Break"` in English and
    /// `"ソウルクラッシュ"` in Japanese.
    ///
    /// The move's raw value is `"spirit-break"`.
    static let spiritBreak = SpiritBreakMove.move
}

enum SpiritBreakMove {
    static let move = PokemonMove(rawValue: "spirit-break")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 15,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Spirit Break",
            .japanese: "ソウルクラッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spiritBreak = SpiritBreakMove.definition
}
