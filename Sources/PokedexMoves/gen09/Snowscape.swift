import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゆきげしき in Japanese.
    ///
    /// The localized name of this move is `"Snowscape"` in English and
    /// `"ゆきげしき"` in Japanese.
    ///
    /// The move's raw value is `"snowscape"`.
    static let snowscape = SnowscapeMove.move
}

enum SnowscapeMove {
    static let move = PokemonMove(rawValue: "snowscape")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
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
            .english: "Snowscape",
            .japanese: "ゆきげしき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let snowscape = SnowscapeMove.definition
}
