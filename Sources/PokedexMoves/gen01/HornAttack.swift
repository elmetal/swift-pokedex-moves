import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つのでつく in Japanese.
    ///
    /// The localized name of this move is `"Horn Attack"` in English and
    /// `"つのでつく"` in Japanese.
    ///
    /// The move's raw value is `"horn-attack"`.
    static let hornAttack = HornAttackMove.move
}

enum HornAttackMove {
    static let move = PokemonMove(rawValue: "horn-attack")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 25,
        power: .fixed(65),
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
            .english: "Horn Attack",
            .japanese: "つのでつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hornAttack = HornAttackMove.definition
}
