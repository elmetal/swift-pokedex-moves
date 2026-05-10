import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぶちかまし in Japanese.
    ///
    /// The localized name of this move is `"Headlong Rush"` in English and
    /// `"ぶちかまし"` in Japanese.
    ///
    /// The move's raw value is `"headlong-rush"`.
    static let headlongRush = HeadlongRushMove.move
}

enum HeadlongRushMove {
    static let move = PokemonMove(rawValue: "headlong-rush")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Headlong Rush",
            .japanese: "ぶちかまし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let headlongRush = HeadlongRushMove.definition
}
