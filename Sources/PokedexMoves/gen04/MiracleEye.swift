import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミラクルアイ in Japanese.
    ///
    /// The localized name of this move is `"Miracle Eye"` in English and
    /// `"ミラクルアイ"` in Japanese.
    ///
    /// The move's raw value is `"miracle-eye"`.
    static let miracleEye = MiracleEyeMove.move
}

enum MiracleEyeMove {
    static let move = PokemonMove(rawValue: "miracle-eye")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Miracle Eye",
            .japanese: "ミラクルアイ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let miracleEye = MiracleEyeMove.definition
}
