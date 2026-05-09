import PokemonTypes

public extension PokemonMove {
    var standardDefinition: PokemonMoveDefinition? {
        PokemonMoveDefinitions.definition(for: self)
    }

    var introducedIn: PokemonGeneration {
        requireStandardDefinition().introducedIn
    }

    var type: PokemonType {
        parameters.type
    }

    var pp: Int {
        parameters.pp
    }

    var power: Int? {
        parameters.power
    }

    var accuracy: Int? {
        parameters.accuracy
    }

    var priority: Int {
        parameters.priority
    }

    var category: PokemonMove.Category {
        parameters.category
    }

    var target: PokemonMove.Target {
        parameters.target
    }

    var parameters: Parameters {
        requireStandardDefinition().parameters
    }

    private func requireStandardDefinition() -> PokemonMoveDefinition {
        guard let definition = standardDefinition else {
            preconditionFailure("Unknown standard PokemonMove: \(rawValue)")
        }

        return definition
    }
}
