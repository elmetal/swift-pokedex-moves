import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とおせんぼう in Japanese.
    ///
    /// The localized name of this move is `"Block"` in English and
    /// `"とおせんぼう"` in Japanese.
    ///
    /// The move's raw value is `"block"`.
    static let block = BlockMove.move
}

enum BlockMove {
    static let move = PokemonMove(rawValue: "block")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Block",
            .japanese: "とおせんぼう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let block = BlockMove.definition
}
