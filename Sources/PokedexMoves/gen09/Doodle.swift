import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うつしえ in Japanese.
    ///
    /// The localized name of this move is `"Doodle"` in English and
    /// `"うつしえ"` in Japanese.
    ///
    /// The move's raw value is `"doodle"`.
    static let doodle = DoodleMove.move
}

enum DoodleMove {
    static let move = PokemonMove(rawValue: "doodle")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Doodle",
            .japanese: "うつしえ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doodle = DoodleMove.definition
}
