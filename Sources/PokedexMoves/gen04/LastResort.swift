import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とっておき in Japanese.
    ///
    /// The localized name of this move is `"Last Resort"` in English and
    /// `"とっておき"` in Japanese.
    ///
    /// The move's raw value is `"last-resort"`.
    static let lastResort = LastResortMove.move
}

enum LastResortMove {
    static let move = PokemonMove(rawValue: "last-resort")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(140),
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
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Last Resort",
            .japanese: "とっておき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lastResort = LastResortMove.definition
}
