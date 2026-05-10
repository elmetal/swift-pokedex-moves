import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しぜんのめぐみ in Japanese.
    ///
    /// The localized name of this move is `"Natural Gift"` in English and
    /// `"しぜんのめぐみ"` in Japanese.
    ///
    /// The move's raw value is `"natural-gift"`.
    static let naturalGift = NaturalGiftMove.move
}

enum NaturalGiftMove {
    static let move = PokemonMove(rawValue: "natural-gift")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .varies,
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
            .english: "Natural Gift",
            .japanese: "しぜんのめぐみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let naturalGift = NaturalGiftMove.definition
}
