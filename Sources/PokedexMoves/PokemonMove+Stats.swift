import PokemonTypes

public extension PokemonMove {
    var type: PokemonType? {
        PokemonMoveDefinitions.definition(for: self)?.type
    }

    var pp: Int? {
        PokemonMoveDefinitions.definition(for: self)?.pp
    }

    var power: Int? {
        PokemonMoveDefinitions.definition(for: self)?.power
    }

    var accuracy: Int? {
        PokemonMoveDefinitions.definition(for: self)?.accuracy
    }

    var priority: Int? {
        PokemonMoveDefinitions.definition(for: self)?.priority
    }
}

