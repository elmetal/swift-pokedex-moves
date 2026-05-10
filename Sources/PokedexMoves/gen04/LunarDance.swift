import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みかづきのまい in Japanese.
    ///
    /// The localized name of this move is `"Lunar Dance"` in English and
    /// `"みかづきのまい"` in Japanese.
    ///
    /// The move's raw value is `"lunar-dance"`.
    static let lunarDance = LunarDanceMove.move
}

enum LunarDanceMove {
    static let move = PokemonMove(rawValue: "lunar-dance")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Lunar Dance",
            .japanese: "みかづきのまい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lunarDance = LunarDanceMove.definition
}
