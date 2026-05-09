import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いちゃもん in Japanese.
    ///
    /// The localized name of this move is `"Torment"` in English and
    /// `"いちゃもん"` in Japanese.
    ///
    /// The move's raw value is `"torment"`.
    static let torment = TormentMove.move
}

enum TormentMove {
    static let move = PokemonMove(rawValue: "torment")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Torment",
            .japanese: "いちゃもん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let torment = TormentMove.definition
}
