public extension PokemonMove {
    /// Returns the standard parameters for the move in the specified version group.
    func parameters(in versionGroup: PokemonVersionGroup) -> PokemonMove.Parameters? {
        standardDefinition?.parameters(in: versionGroup)
    }

    /// Returns the standard parameters for the move in the specified generation.
    ///
    /// This method throws an error when the generation contains multiple
    /// matching parameter values.
    func parameters(in generation: PokemonGeneration) throws -> PokemonMove.Parameters {
        guard let definition = standardDefinition else {
            throw PokemonMoveParameterLookupError.unavailableGeneration(generation)
        }

        return try definition.parameters(in: generation)
    }
}

