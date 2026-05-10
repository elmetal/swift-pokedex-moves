import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さきおくり in Japanese.
    ///
    /// The localized name of this move is `"Quash"` in English and
    /// `"さきおくり"` in Japanese.
    ///
    /// The move's raw value is `"quash"`.
    static let quash = QuashMove.move
}

enum QuashMove {
    static let move = PokemonMove(rawValue: "quash")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Quash",
            .japanese: "さきおくり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let quash = QuashMove.definition
}
