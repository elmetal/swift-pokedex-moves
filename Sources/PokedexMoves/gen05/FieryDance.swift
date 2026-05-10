import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほのおのまい in Japanese.
    ///
    /// The localized name of this move is `"Fiery Dance"` in English and
    /// `"ほのおのまい"` in Japanese.
    ///
    /// The move's raw value is `"fiery-dance"`.
    static let fieryDance = FieryDanceMove.move
}

enum FieryDanceMove {
    static let move = PokemonMove(rawValue: "fiery-dance")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(80),
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
            .english: "Fiery Dance",
            .japanese: "ほのおのまい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fieryDance = FieryDanceMove.definition
}
