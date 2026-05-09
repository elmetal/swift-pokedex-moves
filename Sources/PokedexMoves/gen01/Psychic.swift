import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコキネシス in Japanese.
    ///
    /// The localized name of this move is `"Psychic"` in English and
    /// `"サイコキネシス"` in Japanese.
    ///
    /// The move's raw value is `"psychic"`.
    static let psychic = PsychicMove.move
}

enum PsychicMove {
    static let move = PokemonMove(rawValue: "psychic")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
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
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Psychic",
            .japanese: "サイコキネシス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psychic = PsychicMove.definition
}
