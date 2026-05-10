import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ギアソーサー in Japanese.
    ///
    /// The localized name of this move is `"Gear Grind"` in English and
    /// `"ギアソーサー"` in Japanese.
    ///
    /// The move's raw value is `"gear-grind"`.
    static let gearGrind = GearGrindMove.move
}

enum GearGrindMove {
    static let move = PokemonMove(rawValue: "gear-grind")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 15,
        power: .fixed(50),
        hits: .fixed(2),
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
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
            .english: "Gear Grind",
            .japanese: "ギアソーサー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gearGrind = GearGrindMove.definition
}
