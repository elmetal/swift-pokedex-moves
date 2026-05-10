import Foundation

public extension PokemonMove {
    /// The Pokemon move known as パワーシェア in Japanese.
    ///
    /// The localized name of this move is `"Power Split"` in English and
    /// `"パワーシェア"` in Japanese.
    ///
    /// The move's raw value is `"power-split"`.
    static let powerSplit = PowerSplitMove.move
}

enum PowerSplitMove {
    static let move = PokemonMove(rawValue: "power-split")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
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
            .english: "Power Split",
            .japanese: "パワーシェア",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powerSplit = PowerSplitMove.definition
}
