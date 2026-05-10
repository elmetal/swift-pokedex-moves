import Foundation

public extension PokemonMove {
    /// The Pokemon move known as りんしょう in Japanese.
    ///
    /// The localized name of this move is `"Round"` in English and
    /// `"りんしょう"` in Japanese.
    ///
    /// The move's raw value is `"round"`.
    static let round = RoundMove.move
}

enum RoundMove {
    static let move = PokemonMove(rawValue: "round")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(60),
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
            .english: "Round",
            .japanese: "りんしょう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let round = RoundMove.definition
}
