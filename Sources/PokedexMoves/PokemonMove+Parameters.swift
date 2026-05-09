import PokemonTypes

public extension PokemonMove {
    struct Parameters: Hashable, Sendable {
        public let type: PokemonType
        public let pp: Int
        public let power: Int?
        public let accuracy: Int?
        public let priority: Int
        public let category: PokemonMoveCategory

        public init(
            type: PokemonType,
            pp: Int,
            power: Int?,
            accuracy: Int?,
            priority: Int,
            category: PokemonMoveCategory
        ) {
            self.type = type
            self.pp = pp
            self.power = power
            self.accuracy = accuracy
            self.priority = priority
            self.category = category
        }
    }

    var parameters: Parameters? {
        PokemonMoveDefinitions.definition(for: self)?.parameters
    }
}
