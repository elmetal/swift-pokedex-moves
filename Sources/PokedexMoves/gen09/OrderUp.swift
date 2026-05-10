import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いっちょうあがり in Japanese.
    ///
    /// The localized name of this move is `"Order Up"` in English and
    /// `"いっちょうあがり"` in Japanese.
    ///
    /// The move's raw value is `"order-up"`.
    static let orderUp = OrderUpMove.move
}

enum OrderUpMove {
    static let move = PokemonMove(rawValue: "order-up")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Order Up",
            .japanese: "いっちょうあがり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let orderUp = OrderUpMove.definition
}
