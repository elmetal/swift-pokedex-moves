/// Errors that can occur when looking up historical move parameters.
public enum PokemonMoveParameterLookupError: Error, Equatable, Sendable {
    /// The move doesn't have parameters for the specified version group.
    case unavailableVersionGroup(PokemonVersionGroup)

    /// The move doesn't have parameters for the specified generation.
    case unavailableGeneration(PokemonGeneration)

    /// The specified generation matches multiple parameter values.
    case ambiguousParameters(PokemonGeneration, versionGroups: Set<PokemonVersionGroup>)
}
