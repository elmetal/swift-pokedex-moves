import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ベノムショック in Japanese.
    ///
    /// The localized name of this move is `"Venoshock"` in English and
    /// `"ベノムショック"` in Japanese.
    ///
    /// The move's raw value is `"venoshock"`.
    static let venoshock = VenoshockMove.move
}

enum VenoshockMove {
    static let move = PokemonMove(rawValue: "venoshock")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .fixed(65),
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
            .english: "Venoshock",
            .japanese: "ベノムショック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let venoshock = VenoshockMove.definition
}
