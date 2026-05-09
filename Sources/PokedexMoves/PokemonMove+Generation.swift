public extension PokemonMove {
    var introducedIn: PokemonGeneration? {
        PokemonMoveDefinitions.definition(for: self)?.introducedIn
    }
}

