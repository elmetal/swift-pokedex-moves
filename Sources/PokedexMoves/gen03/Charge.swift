import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じゅうでん in Japanese.
    ///
    /// The localized name of this move is `"Charge"` in English and
    /// `"じゅうでん"` in Japanese.
    ///
    /// The move's raw value is `"charge"`.
    static let charge = ChargeMove.move
}

enum ChargeMove {
    static let move = PokemonMove(rawValue: "charge")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Charge",
            .japanese: "じゅうでん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let charge = ChargeMove.definition
}
