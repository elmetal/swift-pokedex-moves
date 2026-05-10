import Foundation

public extension PokemonMove {
    /// The Pokemon move known as れんごく in Japanese.
    ///
    /// The localized name of this move is `"Inferno"` in English and
    /// `"れんごく"` in Japanese.
    ///
    /// The move's raw value is `"inferno"`.
    static let inferno = InfernoMove.move
}

enum InfernoMove {
    static let move = PokemonMove(rawValue: "inferno")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(50),
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
            .english: "Inferno",
            .japanese: "れんごく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let inferno = InfernoMove.definition
}
