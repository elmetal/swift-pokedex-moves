import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おかたづけ in Japanese.
    ///
    /// The localized name of this move is `"Tidy Up"` in English and
    /// `"おかたづけ"` in Japanese.
    ///
    /// The move's raw value is `"tidy-up"`.
    static let tidyUp = TidyUpMove.move
}

enum TidyUpMove {
    static let move = PokemonMove(rawValue: "tidy-up")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Tidy Up",
            .japanese: "おかたづけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tidyUp = TidyUpMove.definition
}
