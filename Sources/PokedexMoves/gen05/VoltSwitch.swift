import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ボルトチェンジ in Japanese.
    ///
    /// The localized name of this move is `"Volt Switch"` in English and
    /// `"ボルトチェンジ"` in Japanese.
    ///
    /// The move's raw value is `"volt-switch"`.
    static let voltSwitch = VoltSwitchMove.move
}

enum VoltSwitchMove {
    static let move = PokemonMove(rawValue: "volt-switch")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Volt Switch",
            .japanese: "ボルトチェンジ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let voltSwitch = VoltSwitchMove.definition
}
