import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トリプルアクセル in Japanese.
    ///
    /// The localized name of this move is `"Triple Axel"` in English and
    /// `"トリプルアクセル"` in Japanese.
    ///
    /// The move's raw value is `"triple-axel"`.
    static let tripleAxel = TripleAxel.move
}

enum TripleAxel {
    static let move = PokemonMove(rawValue: "triple-axel")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .perHit([20, 40, 60]),
        hits: .fixed(3),
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .swordShield,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Triple Axel",
            .japanese: "トリプルアクセル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tripleAxel = TripleAxel.definition
}

