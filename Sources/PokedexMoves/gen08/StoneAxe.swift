import Foundation

public extension PokemonMove {
    /// The Pokemon move known as がんせきアックス in Japanese.
    ///
    /// The localized name of this move is `"Stone Axe"` in English and
    /// `"がんせきアックス"` in Japanese.
    ///
    /// The move's raw value is `"stone-axe"`.
    static let stoneAxe = StoneAxeMove.move
}

enum StoneAxeMove {
    static let move = PokemonMove(rawValue: "stone-axe")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 15,
        power: .fixed(65),
        hits: .one,
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
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Stone Axe",
            .japanese: "がんせきアックス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stoneAxe = StoneAxeMove.definition
}
