public extension PokemonMove {
    enum Accuracy: Hashable, Codable, Sendable {
        case percent(Int)
        case alwaysHits
        case notApplicable
    }
}

