import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ムーンフォース in Japanese.
    ///
    /// The localized name of this move is `"Moonblast"` in English and
    /// `"ムーンフォース"` in Japanese.
    ///
    /// The move's raw value is `"moonblast"`.
    static let moonblast = MoonblastMove.move
}

enum MoonblastMove {
    static let move = PokemonMove(rawValue: "moonblast")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 15,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Moonblast",
            .japanese: "ムーンフォース",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let moonblast = MoonblastMove.definition
}
