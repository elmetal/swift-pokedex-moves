public extension PokemonMove {
    /// A move's target.
    enum Target: String, Hashable, Codable, Sendable {
        /// Another move.
        case move

        /// The selected target.
        case target

        /// An ally.
        case ally

        /// The user's side.
        case usersSide

        /// The user or an ally.
        case userOrAlly

        /// The opposing side.
        case opposingSide

        /// The user.
        case user

        /// An opposing Pokemon.
        case opposingPokemon

        /// A randomly chosen opposing Pokemon.
        case randomOpposingPokemon

        /// All Pokemon other than the user.
        case allOtherPokemon

        /// All opposing Pokemon.
        case allOpposingPokemon

        /// The entire battlefield.
        case battlefield

        /// The user and its allies.
        case userAndAllies

        /// All Pokemon.
        case allPokemon

        /// The user's allies.
        case allies

        /// A fainted Pokemon.
        case faintedPokemon
    }
}
