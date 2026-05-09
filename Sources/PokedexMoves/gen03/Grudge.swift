import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おんねん in Japanese.
    ///
    /// The localized name of this move is `"Grudge"` in English and
    /// `"おんねん"` in Japanese.
    ///
    /// The move's raw value is `"grudge"`.
    static let grudge = GrudgeMove.move
}

enum GrudgeMove {
    static let move = PokemonMove(rawValue: "grudge")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 5,
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
            .english: "Grudge",
            .japanese: "おんねん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let grudge = GrudgeMove.definition
}
