import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かげうち in Japanese.
    ///
    /// The localized name of this move is `"Shadow Sneak"` in English and
    /// `"かげうち"` in Japanese.
    ///
    /// The move's raw value is `"shadow-sneak"`.
    static let shadowSneak = ShadowSneakMove.move
}

enum ShadowSneakMove {
    static let move = PokemonMove(rawValue: "shadow-sneak")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
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
            .english: "Shadow Sneak",
            .japanese: "かげうち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shadowSneak = ShadowSneakMove.definition
}
