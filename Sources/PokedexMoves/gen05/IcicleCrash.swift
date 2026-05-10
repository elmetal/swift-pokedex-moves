import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つららおとし in Japanese.
    ///
    /// The localized name of this move is `"Icicle Crash"` in English and
    /// `"つららおとし"` in Japanese.
    ///
    /// The move's raw value is `"icicle-crash"`.
    static let icicleCrash = IcicleCrashMove.move
}

enum IcicleCrashMove {
    static let move = PokemonMove(rawValue: "icicle-crash")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Icicle Crash",
            .japanese: "つららおとし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let icicleCrash = IcicleCrashMove.definition
}
