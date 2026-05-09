import Foundation

public extension PokemonMove {
    /// The Pokemon move known as でんこうせっか in Japanese.
    ///
    /// The localized name of this move is `"Quick Attack"` in English and
    /// `"でんこうせっか"` in Japanese.
    ///
    /// The move's raw value is `"quick-attack"`.
    static let quickAttack = QuickAttackMove.move
}

enum QuickAttackMove {
    static let move = PokemonMove(rawValue: "quick-attack")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
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
            .english: "Quick Attack",
            .japanese: "でんこうせっか",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let quickAttack = QuickAttackMove.definition
}
