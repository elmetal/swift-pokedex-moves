import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゆびをふる in Japanese.
    ///
    /// The localized name of this move is `"Metronome"` in English and
    /// `"ゆびをふる"` in Japanese.
    ///
    /// The move's raw value is `"metronome"`.
    static let metronome = MetronomeMove.move
}

enum MetronomeMove {
    static let move = PokemonMove(rawValue: "metronome")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Metronome",
            .japanese: "ゆびをふる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let metronome = MetronomeMove.definition
}
