import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いかりのまえば in Japanese.
    ///
    /// The localized name of this move is `"Super Fang"` in English and
    /// `"いかりのまえば"` in Japanese.
    ///
    /// The move's raw value is `"super-fang"`.
    static let superFang = SuperFangMove.move
}

enum SuperFangMove {
    static let move = PokemonMove(rawValue: "super-fang")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .varies,
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
            .english: "Super Fang",
            .japanese: "いかりのまえば",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let superFang = SuperFangMove.definition
}
