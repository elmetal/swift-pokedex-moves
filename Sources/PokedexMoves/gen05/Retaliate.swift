import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かたきうち in Japanese.
    ///
    /// The localized name of this move is `"Retaliate"` in English and
    /// `"かたきうち"` in Japanese.
    ///
    /// The move's raw value is `"retaliate"`.
    static let retaliate = RetaliateMove.move
}

enum RetaliateMove {
    static let move = PokemonMove(rawValue: "retaliate")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Retaliate",
            .japanese: "かたきうち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let retaliate = RetaliateMove.definition
}
