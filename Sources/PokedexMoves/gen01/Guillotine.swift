import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハサミギロチン in Japanese.
    ///
    /// The localized name of this move is `"Guillotine"` in English and
    /// `"ハサミギロチン"` in Japanese.
    ///
    /// The move's raw value is `"guillotine"`.
    static let guillotine = GuillotineMove.move
}

enum GuillotineMove {
    static let move = PokemonMove(rawValue: "guillotine")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Guillotine",
            .japanese: "ハサミギロチン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let guillotine = GuillotineMove.definition
}
