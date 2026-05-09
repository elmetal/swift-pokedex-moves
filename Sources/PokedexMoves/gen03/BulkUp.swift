import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ビルドアップ in Japanese.
    ///
    /// The localized name of this move is `"Bulk Up"` in English and
    /// `"ビルドアップ"` in Japanese.
    ///
    /// The move's raw value is `"bulk-up"`.
    static let bulkUp = BulkUpMove.move
}

enum BulkUpMove {
    static let move = PokemonMove(rawValue: "bulk-up")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Bulk Up",
            .japanese: "ビルドアップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bulkUp = BulkUpMove.definition
}
