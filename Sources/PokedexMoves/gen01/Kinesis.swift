import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スプーンまげ in Japanese.
    ///
    /// The localized name of this move is `"Kinesis"` in English and
    /// `"スプーンまげ"` in Japanese.
    ///
    /// The move's raw value is `"kinesis"`.
    static let kinesis = KinesisMove.move
}

enum KinesisMove {
    static let move = PokemonMove(rawValue: "kinesis")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .status,
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
            .english: "Kinesis",
            .japanese: "スプーンまげ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let kinesis = KinesisMove.definition
}
