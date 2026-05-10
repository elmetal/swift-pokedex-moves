import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ワイドガード in Japanese.
    ///
    /// The localized name of this move is `"Wide Guard"` in English and
    /// `"ワイドガード"` in Japanese.
    ///
    /// The move's raw value is `"wide-guard"`.
    static let wideGuard = WideGuardMove.move
}

enum WideGuardMove {
    static let move = PokemonMove(rawValue: "wide-guard")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 3,
        category: .status,
        target: .usersSide
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
            .english: "Wide Guard",
            .japanese: "ワイドガード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wideGuard = WideGuardMove.definition
}
