import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たつまき in Japanese.
    ///
    /// The localized name of this move is `"Twister"` in English and
    /// `"たつまき"` in Japanese.
    ///
    /// The move's raw value is `"twister"`.
    static let twister = TwisterMove.move
}

enum TwisterMove {
    static let move = PokemonMove(rawValue: "twister")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 20,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Twister",
            .japanese: "たつまき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let twister = TwisterMove.definition
}
