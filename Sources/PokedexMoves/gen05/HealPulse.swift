import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いやしのはどう in Japanese.
    ///
    /// The localized name of this move is `"Heal Pulse"` in English and
    /// `"いやしのはどう"` in Japanese.
    ///
    /// The move's raw value is `"heal-pulse"`.
    static let healPulse = HealPulseMove.move
}

enum HealPulseMove {
    static let move = PokemonMove(rawValue: "heal-pulse")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
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
            .english: "Heal Pulse",
            .japanese: "いやしのはどう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let healPulse = HealPulseMove.definition
}
