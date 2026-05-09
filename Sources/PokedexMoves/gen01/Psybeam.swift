import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイケこうせん in Japanese.
    ///
    /// The localized name of this move is `"Psybeam"` in English and
    /// `"サイケこうせん"` in Japanese.
    ///
    /// The move's raw value is `"psybeam"`.
    static let psybeam = PsybeamMove.move
}

enum PsybeamMove {
    static let move = PokemonMove(rawValue: "psybeam")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .fixed(65),
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
            .english: "Psybeam",
            .japanese: "サイケこうせん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psybeam = PsybeamMove.definition
}
