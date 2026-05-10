import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダブルウイング in Japanese.
    ///
    /// The localized name of this move is `"Dual Wingbeat"` in English and
    /// `"ダブルウイング"` in Japanese.
    ///
    /// The move's raw value is `"dual-wingbeat"`.
    static let dualWingbeat = DualWingbeatMove.move
}

enum DualWingbeatMove {
    static let move = PokemonMove(rawValue: "dual-wingbeat")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 10,
        power: .fixed(40),
        hits: .fixed(2),
        accuracy: .percent(90),
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
            .english: "Dual Wingbeat",
            .japanese: "ダブルウイング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dualWingbeat = DualWingbeatMove.definition
}
