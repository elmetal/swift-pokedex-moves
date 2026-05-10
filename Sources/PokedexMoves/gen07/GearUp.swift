import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アシストギア in Japanese.
    ///
    /// The localized name of this move is `"Gear Up"` in English and
    /// `"アシストギア"` in Japanese.
    ///
    /// The move's raw value is `"gear-up"`.
    static let gearUp = GearUpMove.move
}

enum GearUpMove {
    static let move = PokemonMove(rawValue: "gear-up")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userAndAllies
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
            .english: "Gear Up",
            .japanese: "アシストギア",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gearUp = GearUpMove.definition
}
