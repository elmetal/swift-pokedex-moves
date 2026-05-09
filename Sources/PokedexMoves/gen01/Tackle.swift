import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たいあたり in Japanese.
    ///
    /// The localized name of this move is `"Tackle"` in English and
    /// `"たいあたり"` in Japanese.
    ///
    /// Use this value when you need to refer to Tackle by its canonical move
    /// identifier.
    ///
    /// ```swift
    /// let move = PokemonMove.tackle
    /// ```
    ///
    /// The move's raw value is `"tackle"`.
    static let tackle = Tackle.move
}

enum Tackle {
    static let move = PokemonMove(rawValue: "tackle")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 35,
        power: .fixed(40),
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameters: parameters,
        localizedNames: [
            .english: "Tackle",
            .japanese: "たいあたり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tackle = Tackle.definition
}
