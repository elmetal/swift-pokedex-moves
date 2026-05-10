import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ばくおんぱ in Japanese.
    ///
    /// The localized name of this move is `"Boomburst"` in English and
    /// `"ばくおんぱ"` in Japanese.
    ///
    /// The move's raw value is `"boomburst"`.
    static let boomburst = BoomburstMove.move
}

enum BoomburstMove {
    static let move = PokemonMove(rawValue: "boomburst")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
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
            .english: "Boomburst",
            .japanese: "ばくおんぱ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let boomburst = BoomburstMove.definition
}
