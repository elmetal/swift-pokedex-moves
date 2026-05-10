import Foundation

public extension PokemonMove {
    /// The Pokemon move known as コットンガード in Japanese.
    ///
    /// The localized name of this move is `"Cotton Guard"` in English and
    /// `"コットンガード"` in Japanese.
    ///
    /// The move's raw value is `"cotton-guard"`.
    static let cottonGuard = CottonGuardMove.move
}

enum CottonGuardMove {
    static let move = PokemonMove(rawValue: "cotton-guard")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
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
            .english: "Cotton Guard",
            .japanese: "コットンガード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let cottonGuard = CottonGuardMove.definition
}
