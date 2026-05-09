import Foundation

public extension PokemonMove {
    /// The Pokemon move known as めいそう in Japanese.
    ///
    /// The localized name of this move is `"Calm Mind"` in English and
    /// `"めいそう"` in Japanese.
    ///
    /// The move's raw value is `"calm-mind"`.
    static let calmMind = CalmMindMove.move
}

enum CalmMindMove {
    static let move = PokemonMove(rawValue: "calm-mind")
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
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Calm Mind",
            .japanese: "めいそう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let calmMind = CalmMindMove.definition
}
