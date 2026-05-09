import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ちょうはつ in Japanese.
    ///
    /// The localized name of this move is `"Taunt"` in English and
    /// `"ちょうはつ"` in Japanese.
    ///
    /// The move's raw value is `"taunt"`.
    static let taunt = TauntMove.move
}

enum TauntMove {
    static let move = PokemonMove(rawValue: "taunt")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Taunt",
            .japanese: "ちょうはつ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let taunt = TauntMove.definition
}
