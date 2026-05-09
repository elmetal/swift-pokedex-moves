import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かわらわり in Japanese.
    ///
    /// The localized name of this move is `"Brick Break"` in English and
    /// `"かわらわり"` in Japanese.
    ///
    /// The move's raw value is `"brick-break"`.
    static let brickBreak = BrickBreakMove.move
}

enum BrickBreakMove {
    static let move = PokemonMove(rawValue: "brick-break")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Brick Break",
            .japanese: "かわらわり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let brickBreak = BrickBreakMove.definition
}
