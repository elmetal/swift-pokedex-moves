import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ついばむ in Japanese.
    ///
    /// The localized name of this move is `"Pluck"` in English and
    /// `"ついばむ"` in Japanese.
    ///
    /// The move's raw value is `"pluck"`.
    static let pluck = PluckMove.move
}

enum PluckMove {
    static let move = PokemonMove(rawValue: "pluck")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 20,
        power: .fixed(60),
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
            .english: "Pluck",
            .japanese: "ついばむ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pluck = PluckMove.definition
}
