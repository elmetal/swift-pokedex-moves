import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かいふくしれい in Japanese.
    ///
    /// The localized name of this move is `"Heal Order"` in English and
    /// `"かいふくしれい"` in Japanese.
    ///
    /// The move's raw value is `"heal-order"`.
    static let healOrder = HealOrderMove.move
}

enum HealOrderMove {
    static let move = PokemonMove(rawValue: "heal-order")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Heal Order",
            .japanese: "かいふくしれい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let healOrder = HealOrderMove.definition
}
