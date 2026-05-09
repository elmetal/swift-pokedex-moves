import Foundation

public extension PokemonMove {
    /// The Pokemon move known as のろい in Japanese.
    ///
    /// The localized name of this move is `"Curse"` in English and
    /// `"のろい"` in Japanese.
    ///
    /// The move's raw value is `"curse"`.
    static let curse = CurseMove.move
}

enum CurseMove {
    static let move = PokemonMove(rawValue: "curse")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .move
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
            .english: "Curse",
            .japanese: "のろい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let curse = CurseMove.definition
}
