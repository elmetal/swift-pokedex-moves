import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねっぷう in Japanese.
    ///
    /// The localized name of this move is `"Heat Wave"` in English and
    /// `"ねっぷう"` in Japanese.
    ///
    /// The move's raw value is `"heat-wave"`.
    static let heatWave = HeatWaveMove.move
}

enum HeatWaveMove {
    static let move = PokemonMove(rawValue: "heat-wave")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Heat Wave",
            .japanese: "ねっぷう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let heatWave = HeatWaveMove.definition
}
