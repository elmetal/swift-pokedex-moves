import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スイープビンタ in Japanese.
    ///
    /// The localized name of this move is `"Tail Slap"` in English and
    /// `"スイープビンタ"` in Japanese.
    ///
    /// The move's raw value is `"tail-slap"`.
    static let tailSlap = TailSlapMove.move
}

enum TailSlapMove {
    static let move = PokemonMove(rawValue: "tail-slap")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(25),
        hits: .range(2...5),
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
            .english: "Tail Slap",
            .japanese: "スイープビンタ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tailSlap = TailSlapMove.definition
}
