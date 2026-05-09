import Foundation

public extension PokemonMove {
    /// The Pokemon move known as まるくなる in Japanese.
    ///
    /// The localized name of this move is `"Defense Curl"` in English and
    /// `"まるくなる"` in Japanese.
    ///
    /// The move's raw value is `"defense-curl"`.
    static let defenseCurl = DefenseCurlMove.move
}

enum DefenseCurlMove {
    static let move = PokemonMove(rawValue: "defense-curl")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
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
            .english: "Defense Curl",
            .japanese: "まるくなる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let defenseCurl = DefenseCurlMove.definition
}
