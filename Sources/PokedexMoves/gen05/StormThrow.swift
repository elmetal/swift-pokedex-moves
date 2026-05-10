import Foundation

public extension PokemonMove {
    /// The Pokemon move known as やまあらし in Japanese.
    ///
    /// The localized name of this move is `"Storm Throw"` in English and
    /// `"やまあらし"` in Japanese.
    ///
    /// The move's raw value is `"storm-throw"`.
    static let stormThrow = StormThrowMove.move
}

enum StormThrowMove {
    static let move = PokemonMove(rawValue: "storm-throw")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [.blackWhite, .black2White2],
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
            .english: "Storm Throw",
            .japanese: "やまあらし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stormThrow = StormThrowMove.definition
}
