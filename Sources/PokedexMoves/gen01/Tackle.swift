public extension PokemonMove {
    /// The Pokemon move known as たいあたり in Japanese.
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
}

