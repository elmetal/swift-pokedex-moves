import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くさわけ in Japanese.
    ///
    /// The localized name of this move is `"Trailblaze"` in English and
    /// `"くさわけ"` in Japanese.
    ///
    /// The move's raw value is `"trailblaze"`.
    static let trailblaze = TrailblazeMove.move
}

enum TrailblazeMove {
    static let move = PokemonMove(rawValue: "trailblaze")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 20,
        power: .fixed(50),
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
            .english: "Trailblaze",
            .japanese: "くさわけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let trailblaze = TrailblazeMove.definition
}
