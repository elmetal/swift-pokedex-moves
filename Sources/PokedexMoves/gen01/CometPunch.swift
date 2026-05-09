import Foundation

public extension PokemonMove {
    /// The Pokemon move known as れんぞくパンチ in Japanese.
    ///
    /// The localized name of this move is `"Comet Punch"` in English and
    /// `"れんぞくパンチ"` in Japanese.
    ///
    /// The move's raw value is `"comet-punch"`.
    static let cometPunch = CometPunchMove.move
}

enum CometPunchMove {
    static let move = PokemonMove(rawValue: "comet-punch")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(18),
        hits: .range(2...5),
        accuracy: .percent(85),
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
            .english: "Comet Punch",
            .japanese: "れんぞくパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let cometPunch = CometPunchMove.definition
}
