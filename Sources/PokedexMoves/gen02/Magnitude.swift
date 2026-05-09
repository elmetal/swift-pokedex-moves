import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マグニチュード in Japanese.
    ///
    /// The localized name of this move is `"Magnitude"` in English and
    /// `"マグニチュード"` in Japanese.
    ///
    /// The move's raw value is `"magnitude"`.
    static let magnitude = MagnitudeMove.move
}

enum MagnitudeMove {
    static let move = PokemonMove(rawValue: "magnitude")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 30,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOtherPokemon
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
            .english: "Magnitude",
            .japanese: "マグニチュード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magnitude = MagnitudeMove.definition
}
