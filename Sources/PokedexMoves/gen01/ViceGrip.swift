import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はさむ in Japanese.
    ///
    /// The localized name of this move is `"Vise Grip"` in English and
    /// `"はさむ"` in Japanese.
    ///
    /// The move's raw value is `"vice-grip"`.
    static let viceGrip = ViceGripMove.move
}

enum ViceGripMove {
    static let move = PokemonMove(rawValue: "vice-grip")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Vise Grip",
            .japanese: "はさむ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let viceGrip = ViceGripMove.definition
}
