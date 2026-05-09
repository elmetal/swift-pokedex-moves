import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アロマセラピー in Japanese.
    ///
    /// The localized name of this move is `"Aromatherapy"` in English and
    /// `"アロマセラピー"` in Japanese.
    ///
    /// The move's raw value is `"aromatherapy"`.
    static let aromatherapy = AromatherapyMove.move
}

enum AromatherapyMove {
    static let move = PokemonMove(rawValue: "aromatherapy")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userAndAllies
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
            .english: "Aromatherapy",
            .japanese: "アロマセラピー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aromatherapy = AromatherapyMove.definition
}
