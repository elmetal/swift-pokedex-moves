public extension PokemonMove {
    enum Target: String, Hashable, Codable, Sendable {
        case move
        case target
        case ally
        case usersSide
        case userOrAlly
        case opposingSide
        case user
        case opposingPokemon
        case randomOpposingPokemon
        case allOtherPokemon
        case allOpposingPokemon
        case battlefield
        case userAndAllies
        case allPokemon
        case allies
    }
}

