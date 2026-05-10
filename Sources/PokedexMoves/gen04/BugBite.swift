import Foundation

public extension PokemonMove {
    /// The Pokemon move known as むしくい in Japanese.
    ///
    /// The localized name of this move is `"Bug Bite"` in English and
    /// `"むしくい"` in Japanese.
    ///
    /// The move's raw value is `"bug-bite"`.
    static let bugBite = BugBiteMove.move
}

enum BugBiteMove {
    static let move = PokemonMove(rawValue: "bug-bite")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Bug Bite",
            .japanese: "むしくい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bugBite = BugBiteMove.definition
}
