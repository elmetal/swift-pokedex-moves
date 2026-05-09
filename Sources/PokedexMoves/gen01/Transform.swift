import Foundation

public extension PokemonMove {
    /// The Pokemon move known as へんしん in Japanese.
    ///
    /// The localized name of this move is `"Transform"` in English and
    /// `"へんしん"` in Japanese.
    ///
    /// The move's raw value is `"transform"`.
    static let transform = TransformMove.move
}

enum TransformMove {
    static let move = PokemonMove(rawValue: "transform")
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
            .english: "Transform",
            .japanese: "へんしん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let transform = TransformMove.definition
}
