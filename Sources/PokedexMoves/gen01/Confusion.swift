import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねんりき in Japanese.
    ///
    /// The localized name of this move is `"Confusion"` in English and
    /// `"ねんりき"` in Japanese.
    ///
    /// The move's raw value is `"confusion"`.
    static let confusion = ConfusionMove.move
}

enum ConfusionMove {
    static let move = PokemonMove(rawValue: "confusion")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 25,
        power: .fixed(50),
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
            .english: "Confusion",
            .japanese: "ねんりき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let confusion = ConfusionMove.definition
}
