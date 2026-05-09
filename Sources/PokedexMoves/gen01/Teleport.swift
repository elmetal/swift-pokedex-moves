import Foundation

public extension PokemonMove {
    /// The Pokemon move known as テレポート in Japanese.
    ///
    /// The localized name of this move is `"Teleport"` in English and
    /// `"テレポート"` in Japanese.
    ///
    /// The move's raw value is `"teleport"`.
    static let teleport = TeleportMove.move
}

enum TeleportMove {
    static let move = PokemonMove(rawValue: "teleport")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: -6,
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
            .english: "Teleport",
            .japanese: "テレポート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let teleport = TeleportMove.definition
}
