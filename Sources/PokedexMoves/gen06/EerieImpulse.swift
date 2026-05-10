import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かいでんぱ in Japanese.
    ///
    /// The localized name of this move is `"Eerie Impulse"` in English and
    /// `"かいでんぱ"` in Japanese.
    ///
    /// The move's raw value is `"eerie-impulse"`.
    static let eerieImpulse = EerieImpulseMove.move
}

enum EerieImpulseMove {
    static let move = PokemonMove(rawValue: "eerie-impulse")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
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
            .english: "Eerie Impulse",
            .japanese: "かいでんぱ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let eerieImpulse = EerieImpulseMove.definition
}
