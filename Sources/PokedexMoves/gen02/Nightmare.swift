import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あくむ in Japanese.
    ///
    /// The localized name of this move is `"Nightmare"` in English and
    /// `"あくむ"` in Japanese.
    ///
    /// The move's raw value is `"nightmare"`.
    static let nightmare = NightmareMove.move
}

enum NightmareMove {
    static let move = PokemonMove(rawValue: "nightmare")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Nightmare",
            .japanese: "あくむ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let nightmare = NightmareMove.definition
}
