import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ネコにこばん in Japanese.
    ///
    /// The localized name of this move is `"Pay Day"` in English and
    /// `"ネコにこばん"` in Japanese.
    ///
    /// The move's raw value is `"pay-day"`.
    static let payDay = PayDayMove.move
}

enum PayDayMove {
    static let move = PokemonMove(rawValue: "pay-day")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(40),
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
            .english: "Pay Day",
            .japanese: "ネコにこばん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let payDay = PayDayMove.definition
}
