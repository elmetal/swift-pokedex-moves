import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ヘドロウェーブ in Japanese.
    ///
    /// The localized name of this move is `"Sludge Wave"` in English and
    /// `"ヘドロウェーブ"` in Japanese.
    ///
    /// The move's raw value is `"sludge-wave"`.
    static let sludgeWave = SludgeWaveMove.move
}

enum SludgeWaveMove {
    static let move = PokemonMove(rawValue: "sludge-wave")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Sludge Wave",
            .japanese: "ヘドロウェーブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sludgeWave = SludgeWaveMove.definition
}
