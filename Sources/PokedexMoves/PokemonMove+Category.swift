public extension PokemonMove {
    var category: PokemonMoveCategory? {
        PokemonMoveDefinitions.definition(for: self)?.category
    }
}

