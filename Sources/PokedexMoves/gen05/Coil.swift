import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とぐろをまく in Japanese.
    ///
    /// The localized name of this move is `"Coil"` in English and
    /// `"とぐろをまく"` in Japanese.
    ///
    /// The move's raw value is `"coil"`.
    static let coil = CoilMove.move
}

enum CoilMove {
    static let move = PokemonMove(rawValue: "coil")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
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
            .english: "Coil",
            .japanese: "とぐろをまく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let coil = CoilMove.definition
}
