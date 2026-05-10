import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さばきのつぶて in Japanese.
    ///
    /// The localized name of this move is `"Judgment"` in English and
    /// `"さばきのつぶて"` in Japanese.
    ///
    /// The move's raw value is `"judgment"`.
    static let judgment = JudgmentMove.move
}

enum JudgmentMove {
    static let move = PokemonMove(rawValue: "judgment")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(100),
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
            .english: "Judgment",
            .japanese: "さばきのつぶて",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let judgment = JudgmentMove.definition
}
