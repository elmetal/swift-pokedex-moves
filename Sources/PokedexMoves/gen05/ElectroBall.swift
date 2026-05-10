import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エレキボール in Japanese.
    ///
    /// The localized name of this move is `"Electro Ball"` in English and
    /// `"エレキボール"` in Japanese.
    ///
    /// The move's raw value is `"electro-ball"`.
    static let electroBall = ElectroBallMove.move
}

enum ElectroBallMove {
    static let move = PokemonMove(rawValue: "electro-ball")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .varies,
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
            .english: "Electro Ball",
            .japanese: "エレキボール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let electroBall = ElectroBallMove.definition
}
