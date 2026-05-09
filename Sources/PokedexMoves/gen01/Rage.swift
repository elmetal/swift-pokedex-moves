import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いかり in Japanese.
    ///
    /// The localized name of this move is `"Rage"` in English and
    /// `"いかり"` in Japanese.
    ///
    /// The move's raw value is `"rage"`.
    static let rage = RageMove.move
}

enum RageMove {
    static let move = PokemonMove(rawValue: "rage")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Rage",
            .japanese: "いかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rage = RageMove.definition
}
