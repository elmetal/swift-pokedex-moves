import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイドチェンジ in Japanese.
    ///
    /// The localized name of this move is `"Ally Switch"` in English and
    /// `"サイドチェンジ"` in Japanese.
    ///
    /// The move's raw value is `"ally-switch"`.
    static let allySwitch = AllySwitchMove.move
}

enum AllySwitchMove {
    static let move = PokemonMove(rawValue: "ally-switch")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 2,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Ally Switch",
            .japanese: "サイドチェンジ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let allySwitch = AllySwitchMove.definition
}
