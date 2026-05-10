import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うらみつらみ in Japanese.
    ///
    /// The localized name of this move is `"Bitter Malice"` in English and
    /// `"うらみつらみ"` in Japanese.
    ///
    /// The move's raw value is `"bitter-malice"`.
    static let bitterMalice = BitterMaliceMove.move
}

enum BitterMaliceMove {
    static let move = PokemonMove(rawValue: "bitter-malice")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .fixed(75),
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
            .english: "Bitter Malice",
            .japanese: "うらみつらみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bitterMalice = BitterMaliceMove.definition
}
