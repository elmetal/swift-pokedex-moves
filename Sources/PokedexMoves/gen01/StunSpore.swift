import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しびれごな in Japanese.
    ///
    /// The localized name of this move is `"Stun Spore"` in English and
    /// `"しびれごな"` in Japanese.
    ///
    /// The move's raw value is `"stun-spore"`.
    static let stunSpore = StunSporeMove.move
}

enum StunSporeMove {
    static let move = PokemonMove(rawValue: "stun-spore")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .status,
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
            .english: "Stun Spore",
            .japanese: "しびれごな",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stunSpore = StunSporeMove.definition
}
