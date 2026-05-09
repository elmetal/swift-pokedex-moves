public extension PokemonMove {
    /// The number of times a move can hit.
    enum Hits: Hashable, Codable, Sendable {
        /// A single hit.
        case one

        /// A fixed number of hits.
        case fixed(Int)

        /// A range of possible hit counts.
        case range(ClosedRange<Int>)

        /// A hit count that varies according to battle conditions.
        case varies
    }
}

