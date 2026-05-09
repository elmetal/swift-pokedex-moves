import Foundation

public extension PokemonMove {
    /// The Pokemon move known as やどりぎのタネ in Japanese.
    ///
    /// The localized name of this move is `"Leech Seed"` in English and
    /// `"やどりぎのタネ"` in Japanese.
    ///
    /// The move's raw value is `"leech-seed"`.
    static let leechSeed = LeechSeedMove.move
}

enum LeechSeedMove {
    static let move = PokemonMove(rawValue: "leech-seed")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Leech Seed",
            .japanese: "やどりぎのタネ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let leechSeed = LeechSeedMove.definition
}
