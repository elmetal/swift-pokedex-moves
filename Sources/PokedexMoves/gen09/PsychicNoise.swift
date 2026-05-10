import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコノイズ in Japanese.
    ///
    /// The localized name of this move is `"Psychic Noise"` in English and
    /// `"サイコノイズ"` in Japanese.
    ///
    /// The move's raw value is `"psychic-noise"`.
    static let psychicNoise = PsychicNoiseMove.move
}

enum PsychicNoiseMove {
    static let move = PokemonMove(rawValue: "psychic-noise")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(75),
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
            .english: "Psychic Noise",
            .japanese: "サイコノイズ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psychicNoise = PsychicNoiseMove.definition
}
