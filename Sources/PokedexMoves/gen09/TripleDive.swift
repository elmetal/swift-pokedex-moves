import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トリプルダイブ in Japanese.
    ///
    /// The localized name of this move is `"Triple Dive"` in English and
    /// `"トリプルダイブ"` in Japanese.
    ///
    /// The move's raw value is `"triple-dive"`.
    static let tripleDive = TripleDiveMove.move
}

enum TripleDiveMove {
    static let move = PokemonMove(rawValue: "triple-dive")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(30),
        hits: .fixed(3),
        accuracy: .percent(95),
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
            .english: "Triple Dive",
            .japanese: "トリプルダイブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tripleDive = TripleDiveMove.definition
}
