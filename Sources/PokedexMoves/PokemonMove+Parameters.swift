import PokemonTypes

public extension PokemonMove {
    struct Parameters: Hashable, Sendable {
        public let type: PokemonType
        public let pp: Int
        public let power: PokemonMove.Power
        public let accuracy: PokemonMove.Accuracy
        public let priority: Int
        public let category: PokemonMove.Category
        public let target: PokemonMove.Target

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
