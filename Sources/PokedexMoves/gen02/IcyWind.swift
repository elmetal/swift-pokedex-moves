import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こごえるかぜ in Japanese.
    ///
    /// The localized name of this move is `"Icy Wind"` in English and
    /// `"こごえるかぜ"` in Japanese.
    ///
    /// The move's raw value is `"icy-wind"`.
    static let icyWind = IcyWindMove.move
}

enum IcyWindMove {
    static let move = PokemonMove(rawValue: "icy-wind")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 15,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Icy Wind",
            .japanese: "こごえるかぜ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let icyWind = IcyWindMove.definition
}
