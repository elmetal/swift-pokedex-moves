import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とびつく in Japanese.
    ///
    /// The localized name of this move is `"Pounce"` in English and
    /// `"とびつく"` in Japanese.
    ///
    /// The move's raw value is `"pounce"`.
    static let pounce = PounceMove.move
}

enum PounceMove {
    static let move = PokemonMove(rawValue: "pounce")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(50),
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
            .english: "Pounce",
            .japanese: "とびつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pounce = PounceMove.definition
}
