import Foundation

public extension PokemonMove {
    /// The Pokemon move known as パワージェム in Japanese.
    ///
    /// The localized name of this move is `"Power Gem"` in English and
    /// `"パワージェム"` in Japanese.
    ///
    /// The move's raw value is `"power-gem"`.
    static let powerGem = PowerGemMove.move
}

enum PowerGemMove {
    static let move = PokemonMove(rawValue: "power-gem")
    static let parameters1 = PokemonMove.Parameters(
        type: .rock,
        pp: 20,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .rock,
        pp: 20,
        power: .fixed(80),
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
            .english: "Power Gem",
            .japanese: "パワージェム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powerGem = PowerGemMove.definition
}
