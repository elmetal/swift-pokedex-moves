import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おいわい in Japanese.
    ///
    /// The localized name of this move is `"Celebrate"` in English and
    /// `"おいわい"` in Japanese.
    ///
    /// The move's raw value is `"celebrate"`.
    static let celebrate = CelebrateMove.move
}

enum CelebrateMove {
    static let move = PokemonMove(rawValue: "celebrate")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Celebrate",
            .japanese: "おいわい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let celebrate = CelebrateMove.definition
}
