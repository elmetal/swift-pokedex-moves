import PokemonTypes

public extension PokemonMove {
    /// The battle parameters for a move.
    struct Parameters: Hashable, Sendable {
        /// The move's elemental type.
        public let type: PokemonType

        /// The move's base PP.
        public let pp: Int

        /// The move's base power.
        public let power: PokemonMove.Power

        /// The move's accuracy.
        public let accuracy: PokemonMove.Accuracy

        /// The move's priority bracket.
        public let priority: Int

        /// The move's category.
        public let category: PokemonMove.Category

        /// The target the move can affect.
        public let target: PokemonMove.Target

        /// Creates move parameters with the specified values.
        public init(
            type: PokemonType,
            pp: Int,
            power: PokemonMove.Power,
            accuracy: PokemonMove.Accuracy,
            priority: Int,
            category: PokemonMove.Category,
            target: PokemonMove.Target
        ) {
            self.type = type
            self.pp = pp
            self.power = power
            self.accuracy = accuracy
            self.priority = priority
            self.category = category
            self.target = target
        }
    }
}
