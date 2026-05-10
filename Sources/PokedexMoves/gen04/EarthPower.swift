import Foundation

public extension PokemonMove {
    /// The Pokemon move known as だいちのちから in Japanese.
    ///
    /// The localized name of this move is `"Earth Power"` in English and
    /// `"だいちのちから"` in Japanese.
    ///
    /// The move's raw value is `"earth-power"`.
    static let earthPower = EarthPowerMove.move
}

enum EarthPowerMove {
    static let move = PokemonMove(rawValue: "earth-power")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
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
            .english: "Earth Power",
            .japanese: "だいちのちから",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let earthPower = EarthPowerMove.definition
}
