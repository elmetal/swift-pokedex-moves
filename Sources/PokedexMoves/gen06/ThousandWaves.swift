import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サウザンウェーブ in Japanese.
    ///
    /// The localized name of this move is `"Thousand Waves"` in English and
    /// `"サウザンウェーブ"` in Japanese.
    ///
    /// The move's raw value is `"thousand-waves"`.
    static let thousandWaves = ThousandWavesMove.move
}

enum ThousandWavesMove {
    static let move = PokemonMove(rawValue: "thousand-waves")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Thousand Waves",
            .japanese: "サウザンウェーブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thousandWaves = ThousandWavesMove.definition
}
