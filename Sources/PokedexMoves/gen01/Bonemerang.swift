import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ホネブーメラン in Japanese.
    ///
    /// The localized name of this move is `"Bonemerang"` in English and
    /// `"ホネブーメラン"` in Japanese.
    ///
    /// The move's raw value is `"bonemerang"`.
    static let bonemerang = BonemerangMove.move
}

enum BonemerangMove {
    static let move = PokemonMove(rawValue: "bonemerang")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(50),
        hits: .fixed(2),
        accuracy: .percent(90),
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
            .english: "Bonemerang",
            .japanese: "ホネブーメラン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bonemerang = BonemerangMove.definition
}
