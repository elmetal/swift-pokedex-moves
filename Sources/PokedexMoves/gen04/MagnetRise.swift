import Foundation

public extension PokemonMove {
    /// The Pokemon move known as でんじふゆう in Japanese.
    ///
    /// The localized name of this move is `"Magnet Rise"` in English and
    /// `"でんじふゆう"` in Japanese.
    ///
    /// The move's raw value is `"magnet-rise"`.
    static let magnetRise = MagnetRiseMove.move
}

enum MagnetRiseMove {
    static let move = PokemonMove(rawValue: "magnet-rise")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Magnet Rise",
            .japanese: "でんじふゆう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magnetRise = MagnetRiseMove.definition
}
