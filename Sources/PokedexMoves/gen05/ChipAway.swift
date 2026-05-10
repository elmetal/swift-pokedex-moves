import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なしくずし in Japanese.
    ///
    /// The localized name of this move is `"Chip Away"` in English and
    /// `"なしくずし"` in Japanese.
    ///
    /// The move's raw value is `"chip-away"`.
    static let chipAway = ChipAwayMove.move
}

enum ChipAwayMove {
    static let move = PokemonMove(rawValue: "chip-away")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
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
            .english: "Chip Away",
            .japanese: "なしくずし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let chipAway = ChipAwayMove.definition
}
