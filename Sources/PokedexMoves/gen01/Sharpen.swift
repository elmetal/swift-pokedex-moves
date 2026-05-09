import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かくばる in Japanese.
    ///
    /// The localized name of this move is `"Sharpen"` in English and
    /// `"かくばる"` in Japanese.
    ///
    /// The move's raw value is `"sharpen"`.
    static let sharpen = SharpenMove.move
}

enum SharpenMove {
    static let move = PokemonMove(rawValue: "sharpen")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Sharpen",
            .japanese: "かくばる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sharpen = SharpenMove.definition
}
