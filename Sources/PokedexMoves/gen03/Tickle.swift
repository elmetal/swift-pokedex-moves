import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くすぐる in Japanese.
    ///
    /// The localized name of this move is `"Tickle"` in English and
    /// `"くすぐる"` in Japanese.
    ///
    /// The move's raw value is `"tickle"`.
    static let tickle = TickleMove.move
}

enum TickleMove {
    static let move = PokemonMove(rawValue: "tickle")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Tickle",
            .japanese: "くすぐる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tickle = TickleMove.definition
}
