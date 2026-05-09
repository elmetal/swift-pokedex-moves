import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひのこ in Japanese.
    ///
    /// The localized name of this move is `"Ember"` in English and
    /// `"ひのこ"` in Japanese.
    ///
    /// The move's raw value is `"ember"`.
    static let ember = EmberMove.move
}

enum EmberMove {
    static let move = PokemonMove(rawValue: "ember")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 25,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Ember",
            .japanese: "ひのこ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ember = EmberMove.definition
}
