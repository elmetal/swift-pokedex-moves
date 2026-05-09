import Foundation

public extension PokemonMove {
    /// The Pokemon move known as のしかかり in Japanese.
    ///
    /// The localized name of this move is `"Body Slam"` in English and
    /// `"のしかかり"` in Japanese.
    ///
    /// The move's raw value is `"body-slam"`.
    static let bodySlam = BodySlamMove.move
}

enum BodySlamMove {
    static let move = PokemonMove(rawValue: "body-slam")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(85),
        hits: .one,
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
            .english: "Body Slam",
            .japanese: "のしかかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bodySlam = BodySlamMove.definition
}
