import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おしおき in Japanese.
    ///
    /// The localized name of this move is `"Punishment"` in English and
    /// `"おしおき"` in Japanese.
    ///
    /// The move's raw value is `"punishment"`.
    static let punishment = PunishmentMove.move
}

enum PunishmentMove {
    static let move = PokemonMove(rawValue: "punishment")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 5,
        power: .varies,
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
            .english: "Punishment",
            .japanese: "おしおき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let punishment = PunishmentMove.definition
}
