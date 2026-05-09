import Foundation

public extension PokemonMove {
    /// The Pokemon move known as プレゼント in Japanese.
    ///
    /// The localized name of this move is `"Present"` in English and
    /// `"プレゼント"` in Japanese.
    ///
    /// The move's raw value is `"present"`.
    static let present = PresentMove.move
}

enum PresentMove {
    static let move = PokemonMove(rawValue: "present")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .varies,
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Present",
            .japanese: "プレゼント",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let present = PresentMove.definition
}
