import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うたう in Japanese.
    ///
    /// The localized name of this move is `"Sing"` in English and
    /// `"うたう"` in Japanese.
    ///
    /// The move's raw value is `"sing"`.
    static let sing = SingMove.move
}

enum SingMove {
    static let move = PokemonMove(rawValue: "sing")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(55),
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
            .english: "Sing",
            .japanese: "うたう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sing = SingMove.definition
}
