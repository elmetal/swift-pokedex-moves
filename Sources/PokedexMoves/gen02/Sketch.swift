import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スケッチ in Japanese.
    ///
    /// The localized name of this move is `"Sketch"` in English and
    /// `"スケッチ"` in Japanese.
    ///
    /// The move's raw value is `"sketch"`.
    static let sketch = SketchMove.move
}

enum SketchMove {
    static let move = PokemonMove(rawValue: "sketch")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 1,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
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
            .english: "Sketch",
            .japanese: "スケッチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sketch = SketchMove.definition
}
