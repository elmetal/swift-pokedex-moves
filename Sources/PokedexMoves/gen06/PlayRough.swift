import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じゃれつく in Japanese.
    ///
    /// The localized name of this move is `"Play Rough"` in English and
    /// `"じゃれつく"` in Japanese.
    ///
    /// The move's raw value is `"play-rough"`.
    static let playRough = PlayRoughMove.move
}

enum PlayRoughMove {
    static let move = PokemonMove(rawValue: "play-rough")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
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
            .english: "Play Rough",
            .japanese: "じゃれつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let playRough = PlayRoughMove.definition
}
