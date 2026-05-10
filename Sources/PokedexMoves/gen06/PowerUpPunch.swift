import Foundation

public extension PokemonMove {
    /// The Pokemon move known as グロウパンチ in Japanese.
    ///
    /// The localized name of this move is `"Power-Up Punch"` in English and
    /// `"グロウパンチ"` in Japanese.
    ///
    /// The move's raw value is `"power-up-punch"`.
    static let powerUpPunch = PowerUpPunchMove.move
}

enum PowerUpPunchMove {
    static let move = PokemonMove(rawValue: "power-up-punch")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Power-Up Punch",
            .japanese: "グロウパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powerUpPunch = PowerUpPunchMove.definition
}
