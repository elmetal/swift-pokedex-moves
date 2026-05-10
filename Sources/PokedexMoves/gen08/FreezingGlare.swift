import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いてつくしせん in Japanese.
    ///
    /// The localized name of this move is `"Freezing Glare"` in English and
    /// `"いてつくしせん"` in Japanese.
    ///
    /// The move's raw value is `"freezing-glare"`.
    static let freezingGlare = FreezingGlareMove.move
}

enum FreezingGlareMove {
    static let move = PokemonMove(rawValue: "freezing-glare")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(90),
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
            .english: "Freezing Glare",
            .japanese: "いてつくしせん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let freezingGlare = FreezingGlareMove.definition
}
