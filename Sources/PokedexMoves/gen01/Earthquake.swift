import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じしん in Japanese.
    ///
    /// The localized name of this move is `"Earthquake"` in English and
    /// `"じしん"` in Japanese.
    ///
    /// The move's raw value is `"earthquake"`.
    static let earthquake = EarthquakeMove.move
}

enum EarthquakeMove {
    static let move = PokemonMove(rawValue: "earthquake")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Earthquake",
            .japanese: "じしん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let earthquake = EarthquakeMove.definition
}
