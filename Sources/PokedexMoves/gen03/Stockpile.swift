import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たくわえる in Japanese.
    ///
    /// The localized name of this move is `"Stockpile"` in English and
    /// `"たくわえる"` in Japanese.
    ///
    /// The move's raw value is `"stockpile"`.
    static let stockpile = StockpileMove.move
}

enum StockpileMove {
    static let move = PokemonMove(rawValue: "stockpile")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Stockpile",
            .japanese: "たくわえる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stockpile = StockpileMove.definition
}
