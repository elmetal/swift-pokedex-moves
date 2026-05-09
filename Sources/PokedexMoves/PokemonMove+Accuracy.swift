public extension PokemonMove {
    /// A move's accuracy.
    enum Accuracy: Hashable, Codable, Sendable {
        /// A fixed percent accuracy.
        case percent(Int)

        /// An accuracy value that always succeeds.
        case alwaysHits

        /// No applicable accuracy value.
        case notApplicable
    }
}
