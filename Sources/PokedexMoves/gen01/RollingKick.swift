import Foundation

public extension PokemonMove {
    /// The Pokemon move known as まわしげり in Japanese.
    ///
    /// The localized name of this move is `"Rolling Kick"` in English and
    /// `"まわしげり"` in Japanese.
    ///
    /// The move's raw value is `"rolling-kick"`.
    static let rollingKick = RollingKickMove.move
}

enum RollingKickMove {
    static let move = PokemonMove(rawValue: "rolling-kick")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Rolling Kick",
            .japanese: "まわしげり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rollingKick = RollingKickMove.definition
}
