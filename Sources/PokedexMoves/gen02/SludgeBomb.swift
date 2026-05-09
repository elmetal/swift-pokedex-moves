import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ヘドロばくだん in Japanese.
    ///
    /// The localized name of this move is `"Sludge Bomb"` in English and
    /// `"ヘドロばくだん"` in Japanese.
    ///
    /// The move's raw value is `"sludge-bomb"`.
    static let sludgeBomb = SludgeBombMove.move
}

enum SludgeBombMove {
    static let move = PokemonMove(rawValue: "sludge-bomb")
    static let parameters1 = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .goldSilver,
                    .crystal,
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
            .english: "Sludge Bomb",
            .japanese: "ヘドロばくだん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sludgeBomb = SludgeBombMove.definition
}
