import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アイススピナー in Japanese.
    ///
    /// The localized name of this move is `"Ice Spinner"` in English and
    /// `"アイススピナー"` in Japanese.
    ///
    /// The move's raw value is `"ice-spinner"`.
    static let iceSpinner = IceSpinnerMove.move
}

enum IceSpinnerMove {
    static let move = PokemonMove(rawValue: "ice-spinner")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 15,
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
            .english: "Ice Spinner",
            .japanese: "アイススピナー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let iceSpinner = IceSpinnerMove.definition
}
