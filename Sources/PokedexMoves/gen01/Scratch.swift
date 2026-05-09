import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひっかく in Japanese.
    ///
    /// The localized name of this move is `"Scratch"` in English and
    /// `"ひっかく"` in Japanese.
    ///
    /// The move's raw value is `"scratch"`.
    static let scratch = ScratchMove.move
}

enum ScratchMove {
    static let move = PokemonMove(rawValue: "scratch")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 35,
        power: .fixed(40),
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
            .english: "Scratch",
            .japanese: "ひっかく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let scratch = ScratchMove.definition
}
