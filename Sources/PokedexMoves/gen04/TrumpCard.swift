import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きりふだ in Japanese.
    ///
    /// The localized name of this move is `"Trump Card"` in English and
    /// `"きりふだ"` in Japanese.
    ///
    /// The move's raw value is `"trump-card"`.
    static let trumpCard = TrumpCardMove.move
}

enum TrumpCardMove {
    static let move = PokemonMove(rawValue: "trump-card")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
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
            .english: "Trump Card",
            .japanese: "きりふだ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let trumpCard = TrumpCardMove.definition
}
