import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みわくのボイス in Japanese.
    ///
    /// The localized name of this move is `"Alluring Voice"` in English and
    /// `"みわくのボイス"` in Japanese.
    ///
    /// The move's raw value is `"alluring-voice"`.
    static let alluringVoice = AlluringVoiceMove.move
}

enum AlluringVoiceMove {
    static let move = PokemonMove(rawValue: "alluring-voice")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Alluring Voice",
            .japanese: "みわくのボイス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let alluringVoice = AlluringVoiceMove.definition
}
