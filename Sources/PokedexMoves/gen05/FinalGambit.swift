import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いのちがけ in Japanese.
    ///
    /// The localized name of this move is `"Final Gambit"` in English and
    /// `"いのちがけ"` in Japanese.
    ///
    /// The move's raw value is `"final-gambit"`.
    static let finalGambit = FinalGambitMove.move
}

enum FinalGambitMove {
    static let move = PokemonMove(rawValue: "final-gambit")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Final Gambit",
            .japanese: "いのちがけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let finalGambit = FinalGambitMove.definition
}
