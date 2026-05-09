import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いあいぎり in Japanese.
    ///
    /// The localized name of this move is `"Cut"` in English and
    /// `"いあいぎり"` in Japanese.
    ///
    /// The move's raw value is `"cut"`.
    static let cut = CutMove.move
}

enum CutMove {
    static let move = PokemonMove(rawValue: "cut")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Cut",
            .japanese: "いあいぎり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let cut = CutMove.definition
}
