import Foundation

public extension PokemonMove {
    /// The Pokemon move known as がんせきふうじ in Japanese.
    ///
    /// The localized name of this move is `"Rock Tomb"` in English and
    /// `"がんせきふうじ"` in Japanese.
    ///
    /// The move's raw value is `"rock-tomb"`.
    static let rockTomb = RockTombMove.move
}

enum RockTombMove {
    static let move = PokemonMove(rawValue: "rock-tomb")
    static let parameters1 = PokemonMove.Parameters(
        type: .rock,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .rock,
        pp: 15,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(95),
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
                    .blackWhite,
                    .black2White2,
                ],
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
            .english: "Rock Tomb",
            .japanese: "がんせきふうじ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rockTomb = RockTombMove.definition
}
