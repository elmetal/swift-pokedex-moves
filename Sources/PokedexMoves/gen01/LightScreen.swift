import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひかりのかべ in Japanese.
    ///
    /// The localized name of this move is `"Light Screen"` in English and
    /// `"ひかりのかべ"` in Japanese.
    ///
    /// The move's raw value is `"light-screen"`.
    static let lightScreen = LightScreenMove.move
}

enum LightScreenMove {
    static let move = PokemonMove(rawValue: "light-screen")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
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
            .english: "Light Screen",
            .japanese: "ひかりのかべ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lightScreen = LightScreenMove.definition
}
