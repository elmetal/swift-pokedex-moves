import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さしおさえ in Japanese.
    ///
    /// The localized name of this move is `"Embargo"` in English and
    /// `"さしおさえ"` in Japanese.
    ///
    /// The move's raw value is `"embargo"`.
    static let embargo = EmbargoMove.move
}

enum EmbargoMove {
    static let move = PokemonMove(rawValue: "embargo")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Embargo",
            .japanese: "さしおさえ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let embargo = EmbargoMove.definition
}
