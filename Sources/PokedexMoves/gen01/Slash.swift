import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きりさく in Japanese.
    ///
    /// The localized name of this move is `"Slash"` in English and
    /// `"きりさく"` in Japanese.
    ///
    /// The move's raw value is `"slash"`.
    static let slash = SlashMove.move
}

enum SlashMove {
    static let move = PokemonMove(rawValue: "slash")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(70),
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
            .english: "Slash",
            .japanese: "きりさく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let slash = SlashMove.definition
}
