import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きょけんとつげき in Japanese.
    ///
    /// The localized name of this move is `"Glaive Rush"` in English and
    /// `"きょけんとつげき"` in Japanese.
    ///
    /// The move's raw value is `"glaive-rush"`.
    static let glaiveRush = GlaiveRushMove.move
}

enum GlaiveRushMove {
    static let move = PokemonMove(rawValue: "glaive-rush")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
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
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Glaive Rush",
            .japanese: "きょけんとつげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let glaiveRush = GlaiveRushMove.definition
}
