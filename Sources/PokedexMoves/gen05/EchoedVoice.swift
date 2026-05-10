import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エコーボイス in Japanese.
    ///
    /// The localized name of this move is `"Echoed Voice"` in English and
    /// `"エコーボイス"` in Japanese.
    ///
    /// The move's raw value is `"echoed-voice"`.
    static let echoedVoice = EchoedVoiceMove.move
}

enum EchoedVoiceMove {
    static let move = PokemonMove(rawValue: "echoed-voice")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Echoed Voice",
            .japanese: "エコーボイス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let echoedVoice = EchoedVoiceMove.definition
}
