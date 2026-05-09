import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドわすれ in Japanese.
    ///
    /// The localized name of this move is `"Amnesia"` in English and
    /// `"ドわすれ"` in Japanese.
    ///
    /// The move's raw value is `"amnesia"`.
    static let amnesia = AmnesiaMove.move
}

enum AmnesiaMove {
    static let move = PokemonMove(rawValue: "amnesia")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
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
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Amnesia",
            .japanese: "ドわすれ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let amnesia = AmnesiaMove.definition
}
