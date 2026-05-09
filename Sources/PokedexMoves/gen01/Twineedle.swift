import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダブルニードル in Japanese.
    ///
    /// The localized name of this move is `"Twineedle"` in English and
    /// `"ダブルニードル"` in Japanese.
    ///
    /// The move's raw value is `"twineedle"`.
    static let twineedle = TwineedleMove.move
}

enum TwineedleMove {
    static let move = PokemonMove(rawValue: "twineedle")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(25),
        hits: .fixed(2),
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Twineedle",
            .japanese: "ダブルニードル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let twineedle = TwineedleMove.definition
}
