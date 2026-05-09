import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハイドロカノン in Japanese.
    ///
    /// The localized name of this move is `"Hydro Cannon"` in English and
    /// `"ハイドロカノン"` in Japanese.
    ///
    /// The move's raw value is `"hydro-cannon"`.
    static let hydroCannon = HydroCannonMove.move
}

enum HydroCannonMove {
    static let move = PokemonMove(rawValue: "hydro-cannon")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Hydro Cannon",
            .japanese: "ハイドロカノン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hydroCannon = HydroCannonMove.definition
}
