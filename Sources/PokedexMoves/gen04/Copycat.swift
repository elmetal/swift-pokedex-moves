import Foundation

public extension PokemonMove {
    /// The Pokemon move known as まねっこ in Japanese.
    ///
    /// The localized name of this move is `"Copycat"` in English and
    /// `"まねっこ"` in Japanese.
    ///
    /// The move's raw value is `"copycat"`.
    static let copycat = CopycatMove.move
}

enum CopycatMove {
    static let move = PokemonMove(rawValue: "copycat")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
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
            .english: "Copycat",
            .japanese: "まねっこ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let copycat = CopycatMove.definition
}
