import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほたるび in Japanese.
    ///
    /// The localized name of this move is `"Tail Glow"` in English and
    /// `"ほたるび"` in Japanese.
    ///
    /// The move's raw value is `"tail-glow"`.
    static let tailGlow = TailGlowMove.move
}

enum TailGlowMove {
    static let move = PokemonMove(rawValue: "tail-glow")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
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
            .english: "Tail Glow",
            .japanese: "ほたるび",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tailGlow = TailGlowMove.definition
}
