import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ファストガード in Japanese.
    ///
    /// The localized name of this move is `"Quick Guard"` in English and
    /// `"ファストガード"` in Japanese.
    ///
    /// The move's raw value is `"quick-guard"`.
    static let quickGuard = QuickGuardMove.move
}

enum QuickGuardMove {
    static let move = PokemonMove(rawValue: "quick-guard")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
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
            .english: "Quick Guard",
            .japanese: "ファストガード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let quickGuard = QuickGuardMove.definition
}
