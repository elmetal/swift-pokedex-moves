import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あくまのキッス in Japanese.
    ///
    /// The localized name of this move is `"Lovely Kiss"` in English and
    /// `"あくまのキッス"` in Japanese.
    ///
    /// The move's raw value is `"lovely-kiss"`.
    static let lovelyKiss = LovelyKissMove.move
}

enum LovelyKissMove {
    static let move = PokemonMove(rawValue: "lovely-kiss")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(75),
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
            .english: "Lovely Kiss",
            .japanese: "あくまのキッス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lovelyKiss = LovelyKissMove.definition
}
