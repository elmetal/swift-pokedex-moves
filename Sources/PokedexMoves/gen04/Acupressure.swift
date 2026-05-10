import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つぼをつく in Japanese.
    ///
    /// The localized name of this move is `"Acupressure"` in English and
    /// `"つぼをつく"` in Japanese.
    ///
    /// The move's raw value is `"acupressure"`.
    static let acupressure = AcupressureMove.move
}

enum AcupressureMove {
    static let move = PokemonMove(rawValue: "acupressure")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userOrAlly
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
            .english: "Acupressure",
            .japanese: "つぼをつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let acupressure = AcupressureMove.definition
}
