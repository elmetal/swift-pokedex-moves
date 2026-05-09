import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しんぴのまもり in Japanese.
    ///
    /// The localized name of this move is `"Safeguard"` in English and
    /// `"しんぴのまもり"` in Japanese.
    ///
    /// The move's raw value is `"safeguard"`.
    static let safeguard = SafeguardMove.move
}

enum SafeguardMove {
    static let move = PokemonMove(rawValue: "safeguard")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 25,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
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
            .english: "Safeguard",
            .japanese: "しんぴのまもり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let safeguard = SafeguardMove.definition
}
