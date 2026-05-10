import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フラワーヒール in Japanese.
    ///
    /// The localized name of this move is `"Floral Healing"` in English and
    /// `"フラワーヒール"` in Japanese.
    ///
    /// The move's raw value is `"floral-healing"`.
    static let floralHealing = FloralHealingMove.move
}

enum FloralHealingMove {
    static let move = PokemonMove(rawValue: "floral-healing")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Floral Healing",
            .japanese: "フラワーヒール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let floralHealing = FloralHealingMove.definition
}
