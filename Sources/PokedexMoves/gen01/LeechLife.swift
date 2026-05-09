import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きゅうけつ in Japanese.
    ///
    /// The localized name of this move is `"Leech Life"` in English and
    /// `"きゅうけつ"` in Japanese.
    ///
    /// The move's raw value is `"leech-life"`.
    static let leechLife = LeechLifeMove.move
}

enum LeechLifeMove {
    static let move = PokemonMove(rawValue: "leech-life")
    static let parameters1 = PokemonMove.Parameters(
        type: .bug,
        pp: 15,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .bug,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Leech Life",
            .japanese: "きゅうけつ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let leechLife = LeechLifeMove.definition
}
