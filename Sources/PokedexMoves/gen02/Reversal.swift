import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きしかいせい in Japanese.
    ///
    /// The localized name of this move is `"Reversal"` in English and
    /// `"きしかいせい"` in Japanese.
    ///
    /// The move's raw value is `"reversal"`.
    static let reversal = ReversalMove.move
}

enum ReversalMove {
    static let move = PokemonMove(rawValue: "reversal")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Reversal",
            .japanese: "きしかいせい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let reversal = ReversalMove.definition
}
