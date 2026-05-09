import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じわれ in Japanese.
    ///
    /// The localized name of this move is `"Fissure"` in English and
    /// `"じわれ"` in Japanese.
    ///
    /// The move's raw value is `"fissure"`.
    static let fissure = FissureMove.move
}

enum FissureMove {
    static let move = PokemonMove(rawValue: "fissure")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 5,
        power: .varies,
        hits: .one,
        accuracy: .percent(30),
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
            .english: "Fissure",
            .japanese: "じわれ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fissure = FissureMove.definition
}
