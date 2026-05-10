import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はるのあらし in Japanese.
    ///
    /// The localized name of this move is `"Springtide Storm"` in English and
    /// `"はるのあらし"` in Japanese.
    ///
    /// The move's raw value is `"springtide-storm"`.
    static let springtideStorm = SpringtideStormMove.move
}

enum SpringtideStormMove {
    static let move = PokemonMove(rawValue: "springtide-storm")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 5,
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
            .english: "Springtide Storm",
            .japanese: "はるのあらし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let springtideStorm = SpringtideStormMove.definition
}
