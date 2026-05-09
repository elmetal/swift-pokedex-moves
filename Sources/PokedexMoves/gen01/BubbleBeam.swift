import Foundation

public extension PokemonMove {
    /// The Pokemon move known as バブルこうせん in Japanese.
    ///
    /// The localized name of this move is `"Bubble Beam"` in English and
    /// `"バブルこうせん"` in Japanese.
    ///
    /// The move's raw value is `"bubble-beam"`.
    static let bubbleBeam = BubbleBeamMove.move
}

enum BubbleBeamMove {
    static let move = PokemonMove(rawValue: "bubble-beam")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Bubble Beam",
            .japanese: "バブルこうせん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bubbleBeam = BubbleBeamMove.definition
}
