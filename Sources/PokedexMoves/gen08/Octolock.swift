import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たこがため in Japanese.
    ///
    /// The localized name of this move is `"Octolock"` in English and
    /// `"たこがため"` in Japanese.
    ///
    /// The move's raw value is `"octolock"`.
    static let octolock = OctolockMove.move
}

enum OctolockMove {
    static let move = PokemonMove(rawValue: "octolock")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Octolock",
            .japanese: "たこがため",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let octolock = OctolockMove.definition
}
