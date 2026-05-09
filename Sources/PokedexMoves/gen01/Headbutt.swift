import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ずつき in Japanese.
    ///
    /// The localized name of this move is `"Headbutt"` in English and
    /// `"ずつき"` in Japanese.
    ///
    /// The move's raw value is `"headbutt"`.
    static let headbutt = HeadbuttMove.move
}

enum HeadbuttMove {
    static let move = PokemonMove(rawValue: "headbutt")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Headbutt",
            .japanese: "ずつき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let headbutt = HeadbuttMove.definition
}
