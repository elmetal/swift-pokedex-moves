import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メガホーン in Japanese.
    ///
    /// The localized name of this move is `"Megahorn"` in English and
    /// `"メガホーン"` in Japanese.
    ///
    /// The move's raw value is `"megahorn"`.
    static let megahorn = MegahornMove.move
}

enum MegahornMove {
    static let move = PokemonMove(rawValue: "megahorn")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Megahorn",
            .japanese: "メガホーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let megahorn = MegahornMove.definition
}
