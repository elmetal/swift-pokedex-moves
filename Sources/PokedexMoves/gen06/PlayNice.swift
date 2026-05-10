import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なかよくする in Japanese.
    ///
    /// The localized name of this move is `"Play Nice"` in English and
    /// `"なかよくする"` in Japanese.
    ///
    /// The move's raw value is `"play-nice"`.
    static let playNice = PlayNiceMove.move
}

enum PlayNiceMove {
    static let move = PokemonMove(rawValue: "play-nice")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Play Nice",
            .japanese: "なかよくする",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let playNice = PlayNiceMove.definition
}
