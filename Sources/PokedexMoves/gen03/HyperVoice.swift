import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハイパーボイス in Japanese.
    ///
    /// The localized name of this move is `"Hyper Voice"` in English and
    /// `"ハイパーボイス"` in Japanese.
    ///
    /// The move's raw value is `"hyper-voice"`.
    static let hyperVoice = HyperVoiceMove.move
}

enum HyperVoiceMove {
    static let move = PokemonMove(rawValue: "hyper-voice")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Hyper Voice",
            .japanese: "ハイパーボイス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hyperVoice = HyperVoiceMove.definition
}
