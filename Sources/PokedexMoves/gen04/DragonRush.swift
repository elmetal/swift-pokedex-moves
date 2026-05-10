import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドラゴンダイブ in Japanese.
    ///
    /// The localized name of this move is `"Dragon Rush"` in English and
    /// `"ドラゴンダイブ"` in Japanese.
    ///
    /// The move's raw value is `"dragon-rush"`.
    static let dragonRush = DragonRushMove.move
}

enum DragonRushMove {
    static let move = PokemonMove(rawValue: "dragon-rush")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .physical,
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
            .english: "Dragon Rush",
            .japanese: "ドラゴンダイブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonRush = DragonRushMove.definition
}
