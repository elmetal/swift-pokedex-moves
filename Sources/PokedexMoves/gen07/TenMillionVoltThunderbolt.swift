import Foundation

public extension PokemonMove {
    /// The Pokemon move known as １０００まんボルト in Japanese.
    ///
    /// The localized name of this move is `"10,000,000 Volt Thunderbolt"` in English and
    /// `"１０００まんボルト"` in Japanese.
    ///
    /// The move's raw value is `"10-000-000-volt-thunderbolt"`.
    static let tenMillionVoltThunderbolt = TenMillionVoltThunderboltMove.move
}

enum TenMillionVoltThunderboltMove {
    static let move = PokemonMove(rawValue: "10-000-000-volt-thunderbolt")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 1,
        power: .fixed(195),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
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
            .english: "10,000,000 Volt Thunderbolt",
            .japanese: "１０００まんボルト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tenMillionVoltThunderbolt = TenMillionVoltThunderboltMove.definition
}
