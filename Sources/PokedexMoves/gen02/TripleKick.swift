import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トリプルキック in Japanese.
    ///
    /// The localized name of this move is `"Triple Kick"` in English and
    /// `"トリプルキック"` in Japanese.
    ///
    /// The move's raw value is `"triple-kick"`.
    static let tripleKick = TripleKickMove.move
}

enum TripleKickMove {
    static let move = PokemonMove(rawValue: "triple-kick")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .perHit([10, 20, 30]),
        hits: .fixed(3),
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Triple Kick",
            .japanese: "トリプルキック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tripleKick = TripleKickMove.definition
}
