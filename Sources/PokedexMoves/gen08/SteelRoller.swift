import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アイアンローラー in Japanese.
    ///
    /// The localized name of this move is `"Steel Roller"` in English and
    /// `"アイアンローラー"` in Japanese.
    ///
    /// The move's raw value is `"steel-roller"`.
    static let steelRoller = SteelRollerMove.move
}

enum SteelRollerMove {
    static let move = PokemonMove(rawValue: "steel-roller")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(130),
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
            .english: "Steel Roller",
            .japanese: "アイアンローラー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let steelRoller = SteelRollerMove.definition
}
