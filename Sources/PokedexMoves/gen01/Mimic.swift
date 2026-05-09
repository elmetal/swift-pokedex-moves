import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ものまね in Japanese.
    ///
    /// The localized name of this move is `"Mimic"` in English and
    /// `"ものまね"` in Japanese.
    ///
    /// The move's raw value is `"mimic"`.
    static let mimic = MimicMove.move
}

enum MimicMove {
    static let move = PokemonMove(rawValue: "mimic")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Mimic",
            .japanese: "ものまね",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mimic = MimicMove.definition
}
