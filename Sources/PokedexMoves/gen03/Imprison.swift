import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふういん in Japanese.
    ///
    /// The localized name of this move is `"Imprison"` in English and
    /// `"ふういん"` in Japanese.
    ///
    /// The move's raw value is `"imprison"`.
    static let imprison = ImprisonMove.move
}

enum ImprisonMove {
    static let move = PokemonMove(rawValue: "imprison")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
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
            .english: "Imprison",
            .japanese: "ふういん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let imprison = ImprisonMove.definition
}
