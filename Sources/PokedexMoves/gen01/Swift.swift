import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スピードスター in Japanese.
    ///
    /// The localized name of this move is `"Swift"` in English and
    /// `"スピードスター"` in Japanese.
    ///
    /// The move's raw value is `"swift"`.
    static let swift = SwiftMove.move
}

enum SwiftMove {
    static let move = PokemonMove(rawValue: "swift")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(60),
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Swift",
            .japanese: "スピードスター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let swift = SwiftMove.definition
}
