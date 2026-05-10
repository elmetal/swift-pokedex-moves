import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とんぼがえり in Japanese.
    ///
    /// The localized name of this move is `"U-turn"` in English and
    /// `"とんぼがえり"` in Japanese.
    ///
    /// The move's raw value is `"u-turn"`.
    static let uTurn = UTurnMove.move
}

enum UTurnMove {
    static let move = PokemonMove(rawValue: "u-turn")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "U-turn",
            .japanese: "とんぼがえり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let uTurn = UTurnMove.definition
}
