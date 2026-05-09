import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クモのす in Japanese.
    ///
    /// The localized name of this move is `"Spider Web"` in English and
    /// `"クモのす"` in Japanese.
    ///
    /// The move's raw value is `"spider-web"`.
    static let spiderWeb = SpiderWebMove.move
}

enum SpiderWebMove {
    static let move = PokemonMove(rawValue: "spider-web")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
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
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Spider Web",
            .japanese: "クモのす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spiderWeb = SpiderWebMove.definition
}
