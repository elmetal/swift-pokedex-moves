import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねっさのあらし in Japanese.
    ///
    /// The localized name of this move is `"Sandsear Storm"` in English and
    /// `"ねっさのあらし"` in Japanese.
    ///
    /// The move's raw value is `"sandsear-storm"`.
    static let sandsearStorm = SandsearStormMove.move
}

enum SandsearStormMove {
    static let move = PokemonMove(rawValue: "sandsear-storm")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
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
            .english: "Sandsear Storm",
            .japanese: "ねっさのあらし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sandsearStorm = SandsearStormMove.definition
}
