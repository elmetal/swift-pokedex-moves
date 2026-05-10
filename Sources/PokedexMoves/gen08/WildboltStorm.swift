import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かみなりあらし in Japanese.
    ///
    /// The localized name of this move is `"Wildbolt Storm"` in English and
    /// `"かみなりあらし"` in Japanese.
    ///
    /// The move's raw value is `"wildbolt-storm"`.
    static let wildboltStorm = WildboltStormMove.move
}

enum WildboltStormMove {
    static let move = PokemonMove(rawValue: "wildbolt-storm")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Wildbolt Storm",
            .japanese: "かみなりあらし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wildboltStorm = WildboltStormMove.definition
}
