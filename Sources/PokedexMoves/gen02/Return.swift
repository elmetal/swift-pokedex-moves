import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おんがえし in Japanese.
    ///
    /// The localized name of this move is `"Return"` in English and
    /// `"おんがえし"` in Japanese.
    ///
    /// The move's raw value is `"return"`.
    static let returnMove = ReturnMove.move
}

enum ReturnMove {
    static let move = PokemonMove(rawValue: "return")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Return",
            .japanese: "おんがえし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let returnMove = ReturnMove.definition
}
