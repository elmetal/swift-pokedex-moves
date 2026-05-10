import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フェイタルクロー in Japanese.
    ///
    /// The localized name of this move is `"Dire Claw"` in English and
    /// `"フェイタルクロー"` in Japanese.
    ///
    /// The move's raw value is `"dire-claw"`.
    static let direClaw = DireClawMove.move
}

enum DireClawMove {
    static let move = PokemonMove(rawValue: "dire-claw")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 15,
        power: .fixed(80),
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
            .english: "Dire Claw",
            .japanese: "フェイタルクロー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let direClaw = DireClawMove.definition
}
