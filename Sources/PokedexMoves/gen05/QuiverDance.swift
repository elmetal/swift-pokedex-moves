import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ちょうのまい in Japanese.
    ///
    /// The localized name of this move is `"Quiver Dance"` in English and
    /// `"ちょうのまい"` in Japanese.
    ///
    /// The move's raw value is `"quiver-dance"`.
    static let quiverDance = QuiverDanceMove.move
}

enum QuiverDanceMove {
    static let move = PokemonMove(rawValue: "quiver-dance")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Quiver Dance",
            .japanese: "ちょうのまい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let quiverDance = QuiverDanceMove.definition
}
