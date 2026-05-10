import Foundation

public extension PokemonMove {
    /// The Pokemon move known as パワーウィップ in Japanese.
    ///
    /// The localized name of this move is `"Power Whip"` in English and
    /// `"パワーウィップ"` in Japanese.
    ///
    /// The move's raw value is `"power-whip"`.
    static let powerWhip = PowerWhipMove.move
}

enum PowerWhipMove {
    static let move = PokemonMove(rawValue: "power-whip")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
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
            .english: "Power Whip",
            .japanese: "パワーウィップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powerWhip = PowerWhipMove.definition
}
