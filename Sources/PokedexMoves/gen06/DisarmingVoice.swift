import Foundation

public extension PokemonMove {
    /// The Pokemon move known as チャームボイス in Japanese.
    ///
    /// The localized name of this move is `"Disarming Voice"` in English and
    /// `"チャームボイス"` in Japanese.
    ///
    /// The move's raw value is `"disarming-voice"`.
    static let disarmingVoice = DisarmingVoiceMove.move
}

enum DisarmingVoiceMove {
    static let move = PokemonMove(rawValue: "disarming-voice")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 15,
        power: .fixed(40),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
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
            .english: "Disarming Voice",
            .japanese: "チャームボイス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let disarmingVoice = DisarmingVoiceMove.definition
}
