import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ロックブラスト in Japanese.
    ///
    /// The localized name of this move is `"Rock Blast"` in English and
    /// `"ロックブラスト"` in Japanese.
    ///
    /// The move's raw value is `"rock-blast"`.
    static let rockBlast = RockBlastMove.move
}

enum RockBlastMove {
    static let move = PokemonMove(rawValue: "rock-blast")
    static let parameters1 = PokemonMove.Parameters(
        type: .rock,
        pp: 10,
        power: .fixed(25),
        hits: .range(2...5),
        accuracy: .percent(80),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .rock,
        pp: 10,
        power: .fixed(25),
        hits: .range(2...5),
        accuracy: .percent(90),
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
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
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
            .english: "Rock Blast",
            .japanese: "ロックブラスト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rockBlast = RockBlastMove.definition
}
