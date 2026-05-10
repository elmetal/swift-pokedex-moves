import Foundation

public extension PokemonMove {
    /// The Pokemon move known as レイジングブル in Japanese.
    ///
    /// The localized name of this move is `"Raging Bull"` in English and
    /// `"レイジングブル"` in Japanese.
    ///
    /// The move's raw value is `"raging-bull"`.
    static let ragingBull = RagingBullMove.move
}

enum RagingBullMove {
    static let move = PokemonMove(rawValue: "raging-bull")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Raging Bull",
            .japanese: "レイジングブル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ragingBull = RagingBullMove.definition
}
