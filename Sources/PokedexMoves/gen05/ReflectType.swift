import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミラータイプ in Japanese.
    ///
    /// The localized name of this move is `"Reflect Type"` in English and
    /// `"ミラータイプ"` in Japanese.
    ///
    /// The move's raw value is `"reflect-type"`.
    static let reflectType = ReflectTypeMove.move
}

enum ReflectTypeMove {
    static let move = PokemonMove(rawValue: "reflect-type")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Reflect Type",
            .japanese: "ミラータイプ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let reflectType = ReflectTypeMove.definition
}
