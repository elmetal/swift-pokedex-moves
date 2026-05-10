import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドゲザン in Japanese.
    ///
    /// The localized name of this move is `"Kowtow Cleave"` in English and
    /// `"ドゲザン"` in Japanese.
    ///
    /// The move's raw value is `"kowtow-cleave"`.
    static let kowtowCleave = KowtowCleaveMove.move
}

enum KowtowCleaveMove {
    static let move = PokemonMove(rawValue: "kowtow-cleave")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Kowtow Cleave",
            .japanese: "ドゲザン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let kowtowCleave = KowtowCleaveMove.definition
}
