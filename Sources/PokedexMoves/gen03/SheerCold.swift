import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぜったいれいど in Japanese.
    ///
    /// The localized name of this move is `"Sheer Cold"` in English and
    /// `"ぜったいれいど"` in Japanese.
    ///
    /// The move's raw value is `"sheer-cold"`.
    static let sheerCold = SheerColdMove.move
}

enum SheerColdMove {
    static let move = PokemonMove(rawValue: "sheer-cold")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 5,
        power: .varies,
        hits: .one,
        accuracy: .percent(30),
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
            .english: "Sheer Cold",
            .japanese: "ぜったいれいど",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sheerCold = SheerColdMove.definition
}
