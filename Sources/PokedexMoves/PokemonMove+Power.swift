public extension PokemonMove {
    enum Power: Hashable, Codable, Sendable {
        case fixed(Int)
        case varies
        case none
    }
}

