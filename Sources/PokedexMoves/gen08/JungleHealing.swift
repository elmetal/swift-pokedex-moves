import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ジャングルヒール in Japanese.
    ///
    /// The localized name of this move is `"Jungle Healing"` in English and
    /// `"ジャングルヒール"` in Japanese.
    ///
    /// The move's raw value is `"jungle-healing"`.
    static let jungleHealing = JungleHealingMove.move
}

enum JungleHealingMove {
    static let move = PokemonMove(rawValue: "jungle-healing")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userAndAllies
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
            .english: "Jungle Healing",
            .japanese: "ジャングルヒール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let jungleHealing = JungleHealingMove.definition
}
