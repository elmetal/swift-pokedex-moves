import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すなあらし in Japanese.
    ///
    /// The localized name of this move is `"Sandstorm"` in English and
    /// `"すなあらし"` in Japanese.
    ///
    /// The move's raw value is `"sandstorm"`.
    static let sandstorm = SandstormMove.move
}

enum SandstormMove {
    static let move = PokemonMove(rawValue: "sandstorm")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .battlefield
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
            .english: "Sandstorm",
            .japanese: "すなあらし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sandstorm = SandstormMove.definition
}
