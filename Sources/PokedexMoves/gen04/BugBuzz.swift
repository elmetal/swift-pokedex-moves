import Foundation

public extension PokemonMove {
    /// The Pokemon move known as むしのさざめき in Japanese.
    ///
    /// The localized name of this move is `"Bug Buzz"` in English and
    /// `"むしのさざめき"` in Japanese.
    ///
    /// The move's raw value is `"bug-buzz"`.
    static let bugBuzz = BugBuzzMove.move
}

enum BugBuzzMove {
    static let move = PokemonMove(rawValue: "bug-buzz")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Bug Buzz",
            .japanese: "むしのさざめき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bugBuzz = BugBuzzMove.definition
}
