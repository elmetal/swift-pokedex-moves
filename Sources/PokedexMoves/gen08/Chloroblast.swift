import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クロロブラスト in Japanese.
    ///
    /// The localized name of this move is `"Chloroblast"` in English and
    /// `"クロロブラスト"` in Japanese.
    ///
    /// The move's raw value is `"chloroblast"`.
    static let chloroblast = ChloroblastMove.move
}

enum ChloroblastMove {
    static let move = PokemonMove(rawValue: "chloroblast")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Chloroblast",
            .japanese: "クロロブラスト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let chloroblast = ChloroblastMove.definition
}
