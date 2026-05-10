import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコショック in Japanese.
    ///
    /// The localized name of this move is `"Psyshock"` in English and
    /// `"サイコショック"` in Japanese.
    ///
    /// The move's raw value is `"psyshock"`.
    static let psyshock = PsyshockMove.move
}

enum PsyshockMove {
    static let move = PokemonMove(rawValue: "psyshock")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(80),
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
            .english: "Psyshock",
            .japanese: "サイコショック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psyshock = PsyshockMove.definition
}
