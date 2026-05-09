import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひっさつまえば in Japanese.
    ///
    /// The localized name of this move is `"Hyper Fang"` in English and
    /// `"ひっさつまえば"` in Japanese.
    ///
    /// The move's raw value is `"hyper-fang"`.
    static let hyperFang = HyperFangMove.move
}

enum HyperFangMove {
    static let move = PokemonMove(rawValue: "hyper-fang")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(80),
        hits: .one,
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
            .english: "Hyper Fang",
            .japanese: "ひっさつまえば",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hyperFang = HyperFangMove.definition
}
