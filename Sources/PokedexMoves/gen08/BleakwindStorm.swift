import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こがらしあらし in Japanese.
    ///
    /// The localized name of this move is `"Bleakwind Storm"` in English and
    /// `"こがらしあらし"` in Japanese.
    ///
    /// The move's raw value is `"bleakwind-storm"`.
    static let bleakwindStorm = BleakwindStormMove.move
}

enum BleakwindStormMove {
    static let move = PokemonMove(rawValue: "bleakwind-storm")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
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
            .english: "Bleakwind Storm",
            .japanese: "こがらしあらし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bleakwindStorm = BleakwindStormMove.definition
}
