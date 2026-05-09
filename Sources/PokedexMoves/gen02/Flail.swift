import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じたばた in Japanese.
    ///
    /// The localized name of this move is `"Flail"` in English and
    /// `"じたばた"` in Japanese.
    ///
    /// The move's raw value is `"flail"`.
    static let flail = FlailMove.move
}

enum FlailMove {
    static let move = PokemonMove(rawValue: "flail")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Flail",
            .japanese: "じたばた",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flail = FlailMove.definition
}
