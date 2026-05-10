import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ネズミざん in Japanese.
    ///
    /// The localized name of this move is `"Population Bomb"` in English and
    /// `"ネズミざん"` in Japanese.
    ///
    /// The move's raw value is `"population-bomb"`.
    static let populationBomb = PopulationBombMove.move
}

enum PopulationBombMove {
    static let move = PokemonMove(rawValue: "population-bomb")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(20),
        hits: .range(1...10),
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Population Bomb",
            .japanese: "ネズミざん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let populationBomb = PopulationBombMove.definition
}
