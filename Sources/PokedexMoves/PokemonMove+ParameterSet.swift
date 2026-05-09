public extension PokemonMove {
    /// A set of parameters that applies to one or more version groups.
    struct ParameterSet: Hashable, Sendable {
        /// The version groups that use the parameters.
        public let versionGroups: Set<PokemonVersionGroup>

        /// The parameters for the version groups.
        public let parameters: PokemonMove.Parameters

        /// Creates a parameter set for the specified version groups.
        public init(
            versionGroups: Set<PokemonVersionGroup>,
            parameters: PokemonMove.Parameters
        ) {
            self.versionGroups = versionGroups
            self.parameters = parameters
        }
    }
}

