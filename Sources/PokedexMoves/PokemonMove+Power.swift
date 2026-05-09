public extension PokemonMove {
    /// A move's base power.
    enum Power: Hashable, Codable, Sendable {
        /// A fixed numeric base power.
        case fixed(Int)

        /// A base power that varies according to battle conditions.
        case varies

        /// No base power.
        case none
    }
}
