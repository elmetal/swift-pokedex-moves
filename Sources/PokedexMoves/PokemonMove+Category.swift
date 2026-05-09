public extension PokemonMove {
    /// A move's physical, special, or status category.
    enum Category: String, Codable, Sendable {
        /// The physical category.
        case physical

        /// The special category.
        case special

        /// The status category.
        case status
    }
}
