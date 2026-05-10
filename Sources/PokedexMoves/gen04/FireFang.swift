import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほのおのキバ in Japanese.
    ///
    /// The localized name of this move is `"Fire Fang"` in English and
    /// `"ほのおのキバ"` in Japanese.
    ///
    /// The move's raw value is `"fire-fang"`.
    static let fireFang = FireFangMove.move
}

enum FireFangMove {
    static let move = PokemonMove(rawValue: "fire-fang")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Fire Fang",
            .japanese: "ほのおのキバ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fireFang = FireFangMove.definition
}
