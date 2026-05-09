import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねをはる in Japanese.
    ///
    /// The localized name of this move is `"Ingrain"` in English and
    /// `"ねをはる"` in Japanese.
    ///
    /// The move's raw value is `"ingrain"`.
    static let ingrain = IngrainMove.move
}

enum IngrainMove {
    static let move = PokemonMove(rawValue: "ingrain")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
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
            .english: "Ingrain",
            .japanese: "ねをはる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ingrain = IngrainMove.definition
}
