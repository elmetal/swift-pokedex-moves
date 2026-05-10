import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクロバット in Japanese.
    ///
    /// The localized name of this move is `"Acrobatics"` in English and
    /// `"アクロバット"` in Japanese.
    ///
    /// The move's raw value is `"acrobatics"`.
    static let acrobatics = AcrobaticsMove.move
}

enum AcrobaticsMove {
    static let move = PokemonMove(rawValue: "acrobatics")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .fixed(55),
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
            .english: "Acrobatics",
            .japanese: "アクロバット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let acrobatics = AcrobaticsMove.definition
}
