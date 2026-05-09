import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドラゴンクロー in Japanese.
    ///
    /// The localized name of this move is `"Dragon Claw"` in English and
    /// `"ドラゴンクロー"` in Japanese.
    ///
    /// The move's raw value is `"dragon-claw"`.
    static let dragonClaw = DragonClawMove.move
}

enum DragonClawMove {
    static let move = PokemonMove(rawValue: "dragon-claw")
    static let parameters1 = PokemonMove.Parameters(
        type: .dragon,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dragon,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Dragon Claw",
            .japanese: "ドラゴンクロー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonClaw = DragonClawMove.definition
}
