import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かいふくふうじ in Japanese.
    ///
    /// The localized name of this move is `"Heal Block"` in English and
    /// `"かいふくふうじ"` in Japanese.
    ///
    /// The move's raw value is `"heal-block"`.
    static let healBlock = HealBlockMove.move
}

enum HealBlockMove {
    static let move = PokemonMove(rawValue: "heal-block")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
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
            .english: "Heal Block",
            .japanese: "かいふくふうじ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let healBlock = HealBlockMove.definition
}
