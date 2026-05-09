import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アンコール in Japanese.
    ///
    /// The localized name of this move is `"Encore"` in English and
    /// `"アンコール"` in Japanese.
    ///
    /// The move's raw value is `"encore"`.
    static let encore = EncoreMove.move
}

enum EncoreMove {
    static let move = PokemonMove(rawValue: "encore")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Encore",
            .japanese: "アンコール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let encore = EncoreMove.definition
}
