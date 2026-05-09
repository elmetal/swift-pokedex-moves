import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あまいかおり in Japanese.
    ///
    /// The localized name of this move is `"Sweet Scent"` in English and
    /// `"あまいかおり"` in Japanese.
    ///
    /// The move's raw value is `"sweet-scent"`.
    static let sweetScent = SweetScentMove.move
}

enum SweetScentMove {
    static let move = PokemonMove(rawValue: "sweet-scent")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
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
            .english: "Sweet Scent",
            .japanese: "あまいかおり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sweetScent = SweetScentMove.definition
}
