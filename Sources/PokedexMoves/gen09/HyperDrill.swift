import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハイパードリル in Japanese.
    ///
    /// The localized name of this move is `"Hyper Drill"` in English and
    /// `"ハイパードリル"` in Japanese.
    ///
    /// The move's raw value is `"hyper-drill"`.
    static let hyperDrill = HyperDrillMove.move
}

enum HyperDrillMove {
    static let move = PokemonMove(rawValue: "hyper-drill")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(100),
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
            .english: "Hyper Drill",
            .japanese: "ハイパードリル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hyperDrill = HyperDrillMove.definition
}
