import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ホイールスピン in Japanese.
    ///
    /// The localized name of this move is `"Spin Out"` in English and
    /// `"ホイールスピン"` in Japanese.
    ///
    /// The move's raw value is `"spin-out"`.
    static let spinOut = SpinOutMove.move
}

enum SpinOutMove {
    static let move = PokemonMove(rawValue: "spin-out")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(100),
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
            .english: "Spin Out",
            .japanese: "ホイールスピン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spinOut = SpinOutMove.definition
}
