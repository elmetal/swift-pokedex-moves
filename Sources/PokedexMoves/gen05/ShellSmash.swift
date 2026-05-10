import Foundation

public extension PokemonMove {
    /// The Pokemon move known as からをやぶる in Japanese.
    ///
    /// The localized name of this move is `"Shell Smash"` in English and
    /// `"からをやぶる"` in Japanese.
    ///
    /// The move's raw value is `"shell-smash"`.
    static let shellSmash = ShellSmashMove.move
}

enum ShellSmashMove {
    static let move = PokemonMove(rawValue: "shell-smash")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Shell Smash",
            .japanese: "からをやぶる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shellSmash = ShellSmashMove.definition
}
