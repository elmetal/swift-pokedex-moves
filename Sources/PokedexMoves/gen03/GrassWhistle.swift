import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くさぶえ in Japanese.
    ///
    /// The localized name of this move is `"Grass Whistle"` in English and
    /// `"くさぶえ"` in Japanese.
    ///
    /// The move's raw value is `"grass-whistle"`.
    static let grassWhistle = GrassWhistleMove.move
}

enum GrassWhistleMove {
    static let move = PokemonMove(rawValue: "grass-whistle")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(55),
        priority: 0,
        category: .status,
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
            .english: "Grass Whistle",
            .japanese: "くさぶえ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let grassWhistle = GrassWhistleMove.definition
}
