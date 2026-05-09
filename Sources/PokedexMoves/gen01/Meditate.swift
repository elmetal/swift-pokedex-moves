import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ヨガのポーズ in Japanese.
    ///
    /// The localized name of this move is `"Meditate"` in English and
    /// `"ヨガのポーズ"` in Japanese.
    ///
    /// The move's raw value is `"meditate"`.
    static let meditate = MeditateMove.move
}

enum MeditateMove {
    static let move = PokemonMove(rawValue: "meditate")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 40,
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
            .english: "Meditate",
            .japanese: "ヨガのポーズ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let meditate = MeditateMove.definition
}
