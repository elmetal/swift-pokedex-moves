import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じんらい in Japanese.
    ///
    /// The localized name of this move is `"Thunderclap"` in English and
    /// `"じんらい"` in Japanese.
    ///
    /// The move's raw value is `"thunderclap"`.
    static let thunderclap = ThunderclapMove.move
}

enum ThunderclapMove {
    static let move = PokemonMove(rawValue: "thunderclap")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 5,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
        category: .special,
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
            .english: "Thunderclap",
            .japanese: "じんらい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunderclap = ThunderclapMove.definition
}
