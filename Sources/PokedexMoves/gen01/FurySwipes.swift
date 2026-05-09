import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みだれひっかき in Japanese.
    ///
    /// The localized name of this move is `"Fury Swipes"` in English and
    /// `"みだれひっかき"` in Japanese.
    ///
    /// The move's raw value is `"fury-swipes"`.
    static let furySwipes = FurySwipesMove.move
}

enum FurySwipesMove {
    static let move = PokemonMove(rawValue: "fury-swipes")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(18),
        hits: .range(2...5),
        accuracy: .percent(80),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Fury Swipes",
            .japanese: "みだれひっかき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let furySwipes = FurySwipesMove.definition
}
