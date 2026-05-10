import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シザークロス in Japanese.
    ///
    /// The localized name of this move is `"X-Scissor"` in English and
    /// `"シザークロス"` in Japanese.
    ///
    /// The move's raw value is `"x-scissor"`.
    static let xScissor = XScissorMove.move
}

enum XScissorMove {
    static let move = PokemonMove(rawValue: "x-scissor")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
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
            .english: "X-Scissor",
            .japanese: "シザークロス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let xScissor = XScissorMove.definition
}
