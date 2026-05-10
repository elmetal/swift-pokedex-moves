import Foundation

public extension PokemonMove {
    /// The Pokemon move known as パワフルエッジ in Japanese.
    ///
    /// The localized name of this move is `"Mighty Cleave"` in English and
    /// `"パワフルエッジ"` in Japanese.
    ///
    /// The move's raw value is `"mighty-cleave"`.
    static let mightyCleave = MightyCleaveMove.move
}

enum MightyCleaveMove {
    static let move = PokemonMove(rawValue: "mighty-cleave")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 5,
        power: .fixed(95),
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
            .english: "Mighty Cleave",
            .japanese: "パワフルエッジ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mightyCleave = MightyCleaveMove.definition
}
