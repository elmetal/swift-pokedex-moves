import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きりばらい in Japanese.
    ///
    /// The localized name of this move is `"Defog"` in English and
    /// `"きりばらい"` in Japanese.
    ///
    /// The move's raw value is `"defog"`.
    static let defog = DefogMove.move
}

enum DefogMove {
    static let move = PokemonMove(rawValue: "defog")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
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
            .english: "Defog",
            .japanese: "きりばらい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let defog = DefogMove.definition
}
