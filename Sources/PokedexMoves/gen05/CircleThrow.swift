import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ともえなげ in Japanese.
    ///
    /// The localized name of this move is `"Circle Throw"` in English and
    /// `"ともえなげ"` in Japanese.
    ///
    /// The move's raw value is `"circle-throw"`.
    static let circleThrow = CircleThrowMove.move
}

enum CircleThrowMove {
    static let move = PokemonMove(rawValue: "circle-throw")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(90),
        priority: -6,
        category: .physical,
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
            .english: "Circle Throw",
            .japanese: "ともえなげ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let circleThrow = CircleThrowMove.definition
}
