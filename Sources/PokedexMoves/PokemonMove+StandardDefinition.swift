import PokemonTypes

public extension PokemonMove {
    /// The standard definition for the move.
    var standardDefinition: PokemonMoveDefinition? {
        PokemonMoveDefinitions.definition(for: self)
    }

    /// The generation in which the move was introduced.
    ///
    /// Use ``standardDefinition`` if the move might not be part of the
    /// standard catalog.
    var introducedIn: PokemonGeneration {
        requireStandardDefinition().introducedIn
    }

    /// The move's elemental type.
    var type: PokemonType {
        parameters.type
    }

    /// The move's base PP.
    var pp: Int {
        parameters.pp
    }

    /// The move's base power.
    var power: PokemonMove.Power {
        parameters.power
    }

    /// The move's accuracy.
    var accuracy: PokemonMove.Accuracy {
        parameters.accuracy
    }

    /// The move's priority.
    var priority: Int {
        parameters.priority
    }

    /// The move's category.
    var category: PokemonMove.Category {
        parameters.category
    }

    /// The target the move can affect.
    var target: PokemonMove.Target {
        parameters.target
    }

    /// The move's battle parameters.
    ///
    /// Use ``standardDefinition`` if the move might not be part of the
    /// standard catalog.
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
