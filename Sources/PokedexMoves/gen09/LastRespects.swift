import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おはかまいり in Japanese.
    ///
    /// The localized name of this move is `"Last Respects"` in English and
    /// `"おはかまいり"` in Japanese.
    ///
    /// The move's raw value is `"last-respects"`.
    static let lastRespects = LastRespectsMove.move
}

enum LastRespectsMove {
    static let move = PokemonMove(rawValue: "last-respects")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .varies,
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
            .english: "Last Respects",
            .japanese: "おはかまいり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lastRespects = LastRespectsMove.definition
}
