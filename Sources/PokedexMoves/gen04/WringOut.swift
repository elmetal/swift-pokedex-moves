import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しぼりとる in Japanese.
    ///
    /// The localized name of this move is `"Wring Out"` in English and
    /// `"しぼりとる"` in Japanese.
    ///
    /// The move's raw value is `"wring-out"`.
    static let wringOut = WringOutMove.move
}

enum WringOutMove {
    static let move = PokemonMove(rawValue: "wring-out")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .varies,
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
            .english: "Wring Out",
            .japanese: "しぼりとる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wringOut = WringOutMove.definition
}
