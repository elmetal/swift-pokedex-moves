import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ガードシェア in Japanese.
    ///
    /// The localized name of this move is `"Guard Split"` in English and
    /// `"ガードシェア"` in Japanese.
    ///
    /// The move's raw value is `"guard-split"`.
    static let guardSplit = GuardSplitMove.move
}

enum GuardSplitMove {
    static let move = PokemonMove(rawValue: "guard-split")
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
            .english: "Guard Split",
            .japanese: "ガードシェア",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let guardSplit = GuardSplitMove.definition
}
