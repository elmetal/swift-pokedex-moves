import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かいりき in Japanese.
    ///
    /// The localized name of this move is `"Strength"` in English and
    /// `"かいりき"` in Japanese.
    ///
    /// The move's raw value is `"strength"`.
    static let strength = StrengthMove.move
}

enum StrengthMove {
    static let move = PokemonMove(rawValue: "strength")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(80),
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
            .english: "Strength",
            .japanese: "かいりき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let strength = StrengthMove.definition
}
