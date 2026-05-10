import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フリーズドライ in Japanese.
    ///
    /// The localized name of this move is `"Freeze-Dry"` in English and
    /// `"フリーズドライ"` in Japanese.
    ///
    /// The move's raw value is `"freeze-dry"`.
    static let freezeDry = FreezeDryMove.move
}

enum FreezeDryMove {
    static let move = PokemonMove(rawValue: "freeze-dry")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 20,
        power: .fixed(70),
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
            .english: "Freeze-Dry",
            .japanese: "フリーズドライ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let freezeDry = FreezeDryMove.definition
}
