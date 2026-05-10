import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゆきなだれ in Japanese.
    ///
    /// The localized name of this move is `"Avalanche"` in English and
    /// `"ゆきなだれ"` in Japanese.
    ///
    /// The move's raw value is `"avalanche"`.
    static let avalanche = AvalancheMove.move
}

enum AvalancheMove {
    static let move = PokemonMove(rawValue: "avalanche")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: -4,
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
            .english: "Avalanche",
            .japanese: "ゆきなだれ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let avalanche = AvalancheMove.definition
}
