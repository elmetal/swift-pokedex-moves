import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコシフト in Japanese.
    ///
    /// The localized name of this move is `"Psycho Shift"` in English and
    /// `"サイコシフト"` in Japanese.
    ///
    /// The move's raw value is `"psycho-shift"`.
    static let psychoShift = PsychoShiftMove.move
}

enum PsychoShiftMove {
    static let move = PokemonMove(rawValue: "psycho-shift")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
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
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Psycho Shift",
            .japanese: "サイコシフト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psychoShift = PsychoShiftMove.definition
}
