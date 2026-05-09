import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つつく in Japanese.
    ///
    /// The localized name of this move is `"Peck"` in English and
    /// `"つつく"` in Japanese.
    ///
    /// The move's raw value is `"peck"`.
    static let peck = PeckMove.move
}

enum PeckMove {
    static let move = PokemonMove(rawValue: "peck")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 35,
        power: .fixed(35),
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
            .english: "Peck",
            .japanese: "つつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let peck = PeckMove.definition
}
