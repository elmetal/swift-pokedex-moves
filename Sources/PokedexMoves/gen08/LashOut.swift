import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うっぷんばらし in Japanese.
    ///
    /// The localized name of this move is `"Lash Out"` in English and
    /// `"うっぷんばらし"` in Japanese.
    ///
    /// The move's raw value is `"lash-out"`.
    static let lashOut = LashOutMove.move
}

enum LashOutMove {
    static let move = PokemonMove(rawValue: "lash-out")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 5,
        power: .fixed(75),
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
            .english: "Lash Out",
            .japanese: "うっぷんばらし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lashOut = LashOutMove.definition
}
