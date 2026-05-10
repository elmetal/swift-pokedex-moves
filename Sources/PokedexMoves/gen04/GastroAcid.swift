import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いえき in Japanese.
    ///
    /// The localized name of this move is `"Gastro Acid"` in English and
    /// `"いえき"` in Japanese.
    ///
    /// The move's raw value is `"gastro-acid"`.
    static let gastroAcid = GastroAcidMove.move
}

enum GastroAcidMove {
    static let move = PokemonMove(rawValue: "gastro-acid")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Gastro Acid",
            .japanese: "いえき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gastroAcid = GastroAcidMove.definition
}
