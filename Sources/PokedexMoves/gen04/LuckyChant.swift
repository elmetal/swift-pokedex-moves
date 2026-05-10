import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おまじない in Japanese.
    ///
    /// The localized name of this move is `"Lucky Chant"` in English and
    /// `"おまじない"` in Japanese.
    ///
    /// The move's raw value is `"lucky-chant"`.
    static let luckyChant = LuckyChantMove.move
}

enum LuckyChantMove {
    static let move = PokemonMove(rawValue: "lucky-chant")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
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
            .english: "Lucky Chant",
            .japanese: "おまじない",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let luckyChant = LuckyChantMove.definition
}
