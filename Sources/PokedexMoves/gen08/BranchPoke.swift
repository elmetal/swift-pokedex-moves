import Foundation

public extension PokemonMove {
    /// The Pokemon move known as えだづき in Japanese.
    ///
    /// The localized name of this move is `"Branch Poke"` in English and
    /// `"えだづき"` in Japanese.
    ///
    /// The move's raw value is `"branch-poke"`.
    static let branchPoke = BranchPokeMove.move
}

enum BranchPokeMove {
    static let move = PokemonMove(rawValue: "branch-poke")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 40,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Branch Poke",
            .japanese: "えだづき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let branchPoke = BranchPokeMove.definition
}
