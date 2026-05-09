import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブレイククロー in Japanese.
    ///
    /// The localized name of this move is `"Crush Claw"` in English and
    /// `"ブレイククロー"` in Japanese.
    ///
    /// The move's raw value is `"crush-claw"`.
    static let crushClaw = CrushClawMove.move
}

enum CrushClawMove {
    static let move = PokemonMove(rawValue: "crush-claw")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
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
            .english: "Crush Claw",
            .japanese: "ブレイククロー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let crushClaw = CrushClawMove.definition
}
