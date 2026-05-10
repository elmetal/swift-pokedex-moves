import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じゅうりょく in Japanese.
    ///
    /// The localized name of this move is `"Gravity"` in English and
    /// `"じゅうりょく"` in Japanese.
    ///
    /// The move's raw value is `"gravity"`.
    static let gravity = GravityMove.move
}

enum GravityMove {
    static let move = PokemonMove(rawValue: "gravity")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
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
            .english: "Gravity",
            .japanese: "じゅうりょく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gravity = GravityMove.definition
}
