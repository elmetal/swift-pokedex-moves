import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トラバサミ in Japanese.
    ///
    /// The localized name of this move is `"Snap Trap"` in English and
    /// `"トラバサミ"` in Japanese.
    ///
    /// The move's raw value is `"snap-trap"`.
    static let snapTrap = SnapTrapMove.move
}

enum SnapTrapMove {
    static let move = PokemonMove(rawValue: "snap-trap")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(35),
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
            .english: "Snap Trap",
            .japanese: "トラバサミ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let snapTrap = SnapTrapMove.definition
}
