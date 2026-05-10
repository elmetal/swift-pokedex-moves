import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フェアリーロック in Japanese.
    ///
    /// The localized name of this move is `"Fairy Lock"` in English and
    /// `"フェアリーロック"` in Japanese.
    ///
    /// The move's raw value is `"fairy-lock"`.
    static let fairyLock = FairyLockMove.move
}

enum FairyLockMove {
    static let move = PokemonMove(rawValue: "fairy-lock")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Fairy Lock",
            .japanese: "フェアリーロック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fairyLock = FairyLockMove.definition
}
