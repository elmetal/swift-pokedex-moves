import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オーラぐるま in Japanese.
    ///
    /// The localized name of this move is `"Aura Wheel"` in English and
    /// `"オーラぐるま"` in Japanese.
    ///
    /// The move's raw value is `"aura-wheel"`.
    static let auraWheel = AuraWheelMove.move
}

enum AuraWheelMove {
    static let move = PokemonMove(rawValue: "aura-wheel")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(110),
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
            .english: "Aura Wheel",
            .japanese: "オーラぐるま",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let auraWheel = AuraWheelMove.definition
}
