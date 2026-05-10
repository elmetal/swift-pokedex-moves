import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ボディパージ in Japanese.
    ///
    /// The localized name of this move is `"Autotomize"` in English and
    /// `"ボディパージ"` in Japanese.
    ///
    /// The move's raw value is `"autotomize"`.
    static let autotomize = AutotomizeMove.move
}

enum AutotomizeMove {
    static let move = PokemonMove(rawValue: "autotomize")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
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
            .english: "Autotomize",
            .japanese: "ボディパージ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let autotomize = AutotomizeMove.definition
}
