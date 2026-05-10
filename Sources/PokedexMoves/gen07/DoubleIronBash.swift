import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダブルパンツァー in Japanese.
    ///
    /// The localized name of this move is `"Double Iron Bash"` in English and
    /// `"ダブルパンツァー"` in Japanese.
    ///
    /// The move's raw value is `"double-iron-bash"`.
    static let doubleIronBash = DoubleIronBashMove.move
}

enum DoubleIronBashMove {
    static let move = PokemonMove(rawValue: "double-iron-bash")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(60),
        hits: .fixed(2),
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.letsGoPikachuLetsGoEevee, .swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Double Iron Bash",
            .japanese: "ダブルパンツァー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doubleIronBash = DoubleIronBashMove.definition
}
