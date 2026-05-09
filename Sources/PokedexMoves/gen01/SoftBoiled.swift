import Foundation

public extension PokemonMove {
    /// The Pokemon move known as タマゴうみ in Japanese.
    ///
    /// The localized name of this move is `"Soft-Boiled"` in English and
    /// `"タマゴうみ"` in Japanese.
    ///
    /// The move's raw value is `"soft-boiled"`.
    static let softBoiled = SoftBoiledMove.move
}

enum SoftBoiledMove {
    static let move = PokemonMove(rawValue: "soft-boiled")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Soft-Boiled",
            .japanese: "タマゴうみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let softBoiled = SoftBoiledMove.definition
}
