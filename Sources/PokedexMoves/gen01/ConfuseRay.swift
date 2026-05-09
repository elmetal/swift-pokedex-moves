import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あやしいひかり in Japanese.
    ///
    /// The localized name of this move is `"Confuse Ray"` in English and
    /// `"あやしいひかり"` in Japanese.
    ///
    /// The move's raw value is `"confuse-ray"`.
    static let confuseRay = ConfuseRayMove.move
}

enum ConfuseRayMove {
    static let move = PokemonMove(rawValue: "confuse-ray")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Confuse Ray",
            .japanese: "あやしいひかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let confuseRay = ConfuseRayMove.definition
}
