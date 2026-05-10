import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ライジングボルト in Japanese.
    ///
    /// The localized name of this move is `"Rising Voltage"` in English and
    /// `"ライジングボルト"` in Japanese.
    ///
    /// The move's raw value is `"rising-voltage"`.
    static let risingVoltage = RisingVoltageMove.move
}

enum RisingVoltageMove {
    static let move = PokemonMove(rawValue: "rising-voltage")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Rising Voltage",
            .japanese: "ライジングボルト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let risingVoltage = RisingVoltageMove.definition
}
