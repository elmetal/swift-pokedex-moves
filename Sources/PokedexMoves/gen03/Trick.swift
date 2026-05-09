import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トリック in Japanese.
    ///
    /// The localized name of this move is `"Trick"` in English and
    /// `"トリック"` in Japanese.
    ///
    /// The move's raw value is `"trick"`.
    static let trick = TrickMove.move
}

enum TrickMove {
    static let move = PokemonMove(rawValue: "trick")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
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
            .english: "Trick",
            .japanese: "トリック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let trick = TrickMove.definition
}
