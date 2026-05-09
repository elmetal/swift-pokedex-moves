import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゆめくい in Japanese.
    ///
    /// The localized name of this move is `"Dream Eater"` in English and
    /// `"ゆめくい"` in Japanese.
    ///
    /// The move's raw value is `"dream-eater"`.
    static let dreamEater = DreamEaterMove.move
}

enum DreamEaterMove {
    static let move = PokemonMove(rawValue: "dream-eater")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .fixed(100),
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
            .english: "Dream Eater",
            .japanese: "ゆめくい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dreamEater = DreamEaterMove.definition
}
