import Foundation

public extension PokemonMove {
    /// The Pokemon move known as キノコのほうし in Japanese.
    ///
    /// The localized name of this move is `"Spore"` in English and
    /// `"キノコのほうし"` in Japanese.
    ///
    /// The move's raw value is `"spore"`.
    static let spore = SporeMove.move
}

enum SporeMove {
    static let move = PokemonMove(rawValue: "spore")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
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
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Spore",
            .japanese: "キノコのほうし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spore = SporeMove.definition
}
