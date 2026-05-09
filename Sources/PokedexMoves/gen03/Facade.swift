import Foundation

public extension PokemonMove {
    /// The Pokemon move known as からげんき in Japanese.
    ///
    /// The localized name of this move is `"Facade"` in English and
    /// `"からげんき"` in Japanese.
    ///
    /// The move's raw value is `"facade"`.
    static let facade = FacadeMove.move
}

enum FacadeMove {
    static let move = PokemonMove(rawValue: "facade")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Facade",
            .japanese: "からげんき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let facade = FacadeMove.definition
}
