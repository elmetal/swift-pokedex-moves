import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ヒートスタンプ in Japanese.
    ///
    /// The localized name of this move is `"Heat Crash"` in English and
    /// `"ヒートスタンプ"` in Japanese.
    ///
    /// The move's raw value is `"heat-crash"`.
    static let heatCrash = HeatCrashMove.move
}

enum HeatCrashMove {
    static let move = PokemonMove(rawValue: "heat-crash")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Heat Crash",
            .japanese: "ヒートスタンプ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let heatCrash = HeatCrashMove.definition
}
