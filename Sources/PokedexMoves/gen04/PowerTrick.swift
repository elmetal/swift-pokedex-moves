import Foundation

public extension PokemonMove {
    /// The Pokemon move known as パワートリック in Japanese.
    ///
    /// The localized name of this move is `"Power Trick"` in English and
    /// `"パワートリック"` in Japanese.
    ///
    /// The move's raw value is `"power-trick"`.
    static let powerTrick = PowerTrickMove.move
}

enum PowerTrickMove {
    static let move = PokemonMove(rawValue: "power-trick")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
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
            .english: "Power Trick",
            .japanese: "パワートリック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powerTrick = PowerTrickMove.definition
}
