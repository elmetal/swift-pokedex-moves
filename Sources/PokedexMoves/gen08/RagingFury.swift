import Foundation

public extension PokemonMove {
    /// The Pokemon move known as だいふんげき in Japanese.
    ///
    /// The localized name of this move is `"Raging Fury"` in English and
    /// `"だいふんげき"` in Japanese.
    ///
    /// The move's raw value is `"raging-fury"`.
    static let ragingFury = RagingFuryMove.move
}

enum RagingFuryMove {
    static let move = PokemonMove(rawValue: "raging-fury")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .randomOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Raging Fury",
            .japanese: "だいふんげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ragingFury = RagingFuryMove.definition
}
