import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クロスチョップ in Japanese.
    ///
    /// The localized name of this move is `"Cross Chop"` in English and
    /// `"クロスチョップ"` in Japanese.
    ///
    /// The move's raw value is `"cross-chop"`.
    static let crossChop = CrossChopMove.move
}

enum CrossChopMove {
    static let move = PokemonMove(rawValue: "cross-chop")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(80),
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
            .english: "Cross Chop",
            .japanese: "クロスチョップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let crossChop = CrossChopMove.definition
}
