import Foundation

public extension PokemonMove {
    /// The Pokemon move known as りゅうのはどう in Japanese.
    ///
    /// The localized name of this move is `"Dragon Pulse"` in English and
    /// `"りゅうのはどう"` in Japanese.
    ///
    /// The move's raw value is `"dragon-pulse"`.
    static let dragonPulse = DragonPulseMove.move
}

enum DragonPulseMove {
    static let move = PokemonMove(rawValue: "dragon-pulse")
    static let parameters1 = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Dragon Pulse",
            .japanese: "りゅうのはどう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonPulse = DragonPulseMove.definition
}
