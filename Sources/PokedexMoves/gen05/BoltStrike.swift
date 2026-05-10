import Foundation

public extension PokemonMove {
    /// The Pokemon move known as らいげき in Japanese.
    ///
    /// The localized name of this move is `"Bolt Strike"` in English and
    /// `"らいげき"` in Japanese.
    ///
    /// The move's raw value is `"bolt-strike"`.
    static let boltStrike = BoltStrikeMove.move
}

enum BoltStrikeMove {
    static let move = PokemonMove(rawValue: "bolt-strike")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
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
            .english: "Bolt Strike",
            .japanese: "らいげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let boltStrike = BoltStrikeMove.definition
}
