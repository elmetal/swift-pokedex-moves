import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サンダープリズン in Japanese.
    ///
    /// The localized name of this move is `"Thunder Cage"` in English and
    /// `"サンダープリズン"` in Japanese.
    ///
    /// The move's raw value is `"thunder-cage"`.
    static let thunderCage = ThunderCageMove.move
}

enum ThunderCageMove {
    static let move = PokemonMove(rawValue: "thunder-cage")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
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
            .english: "Thunder Cage",
            .japanese: "サンダープリズン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunderCage = ThunderCageMove.definition
}
