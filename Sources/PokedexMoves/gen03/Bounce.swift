import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とびはねる in Japanese.
    ///
    /// The localized name of this move is `"Bounce"` in English and
    /// `"とびはねる"` in Japanese.
    ///
    /// The move's raw value is `"bounce"`.
    static let bounce = BounceMove.move
}

enum BounceMove {
    static let move = PokemonMove(rawValue: "bounce")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 5,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Bounce",
            .japanese: "とびはねる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bounce = BounceMove.definition
}
