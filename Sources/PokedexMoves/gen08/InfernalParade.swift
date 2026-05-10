import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひゃっきやこう in Japanese.
    ///
    /// The localized name of this move is `"Infernal Parade"` in English and
    /// `"ひゃっきやこう"` in Japanese.
    ///
    /// The move's raw value is `"infernal-parade"`.
    static let infernalParade = InfernalParadeMove.move
}

enum InfernalParadeMove {
    static let move = PokemonMove(rawValue: "infernal-parade")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 15,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Infernal Parade",
            .japanese: "ひゃっきやこう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let infernalParade = InfernalParadeMove.definition
}
