import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコブレイク in Japanese.
    ///
    /// The localized name of this move is `"Psystrike"` in English and
    /// `"サイコブレイク"` in Japanese.
    ///
    /// The move's raw value is `"psystrike"`.
    static let psystrike = PsystrikeMove.move
}

enum PsystrikeMove {
    static let move = PokemonMove(rawValue: "psystrike")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Psystrike",
            .japanese: "サイコブレイク",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psystrike = PsystrikeMove.definition
}
