import Foundation

public extension PokemonMove {
    /// The Pokemon move known as らいめいげり in Japanese.
    ///
    /// The localized name of this move is `"Thunderous Kick"` in English and
    /// `"らいめいげり"` in Japanese.
    ///
    /// The move's raw value is `"thunderous-kick"`.
    static let thunderousKick = ThunderousKickMove.move
}

enum ThunderousKickMove {
    static let move = PokemonMove(rawValue: "thunderous-kick")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(90),
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
            .english: "Thunderous Kick",
            .japanese: "らいめいげり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunderousKick = ThunderousKickMove.definition
}
