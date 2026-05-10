import Foundation

public extension PokemonMove {
    /// The Pokemon move known as イカサマ in Japanese.
    ///
    /// The localized name of this move is `"Foul Play"` in English and
    /// `"イカサマ"` in Japanese.
    ///
    /// The move's raw value is `"foul-play"`.
    static let foulPlay = FoulPlayMove.move
}

enum FoulPlayMove {
    static let move = PokemonMove(rawValue: "foul-play")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(95),
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
            .english: "Foul Play",
            .japanese: "イカサマ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let foulPlay = FoulPlayMove.definition
}
