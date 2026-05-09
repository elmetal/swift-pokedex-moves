import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きあいパンチ in Japanese.
    ///
    /// The localized name of this move is `"Focus Punch"` in English and
    /// `"きあいパンチ"` in Japanese.
    ///
    /// The move's raw value is `"focus-punch"`.
    static let focusPunch = FocusPunchMove.move
}

enum FocusPunchMove {
    static let move = PokemonMove(rawValue: "focus-punch")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(100),
        priority: -3,
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
            .english: "Focus Punch",
            .japanese: "きあいパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let focusPunch = FocusPunchMove.definition
}
