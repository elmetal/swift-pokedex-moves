import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ちょうおんぱ in Japanese.
    ///
    /// The localized name of this move is `"Supersonic"` in English and
    /// `"ちょうおんぱ"` in Japanese.
    ///
    /// The move's raw value is `"supersonic"`.
    static let supersonic = SupersonicMove.move
}

enum SupersonicMove {
    static let move = PokemonMove(rawValue: "supersonic")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(55),
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
            .english: "Supersonic",
            .japanese: "ちょうおんぱ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let supersonic = SupersonicMove.definition
}
