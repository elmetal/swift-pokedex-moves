import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みだれづき in Japanese.
    ///
    /// The localized name of this move is `"Fury Attack"` in English and
    /// `"みだれづき"` in Japanese.
    ///
    /// The move's raw value is `"fury-attack"`.
    static let furyAttack = FuryAttackMove.move
}

enum FuryAttackMove {
    static let move = PokemonMove(rawValue: "fury-attack")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(15),
        hits: .range(2...5),
        accuracy: .percent(85),
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
            .english: "Fury Attack",
            .japanese: "みだれづき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let furyAttack = FuryAttackMove.definition
}
