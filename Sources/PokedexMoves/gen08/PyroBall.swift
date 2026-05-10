import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かえんボール in Japanese.
    ///
    /// The localized name of this move is `"Pyro Ball"` in English and
    /// `"かえんボール"` in Japanese.
    ///
    /// The move's raw value is `"pyro-ball"`.
    static let pyroBall = PyroBallMove.move
}

enum PyroBallMove {
    static let move = PokemonMove(rawValue: "pyro-ball")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Pyro Ball",
            .japanese: "かえんボール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pyroBall = PyroBallMove.definition
}
