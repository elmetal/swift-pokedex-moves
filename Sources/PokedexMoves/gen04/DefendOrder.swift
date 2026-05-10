import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぼうぎょしれい in Japanese.
    ///
    /// The localized name of this move is `"Defend Order"` in English and
    /// `"ぼうぎょしれい"` in Japanese.
    ///
    /// The move's raw value is `"defend-order"`.
    static let defendOrder = DefendOrderMove.move
}

enum DefendOrderMove {
    static let move = PokemonMove(rawValue: "defend-order")
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
            .english: "Defend Order",
            .japanese: "ぼうぎょしれい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let defendOrder = DefendOrderMove.definition
}
