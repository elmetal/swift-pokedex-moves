import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なかまづくり in Japanese.
    ///
    /// The localized name of this move is `"Entrainment"` in English and
    /// `"なかまづくり"` in Japanese.
    ///
    /// The move's raw value is `"entrainment"`.
    static let entrainment = EntrainmentMove.move
}

enum EntrainmentMove {
    static let move = PokemonMove(rawValue: "entrainment")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Entrainment",
            .japanese: "なかまづくり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let entrainment = EntrainmentMove.definition
}
