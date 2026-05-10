import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アストラルビット in Japanese.
    ///
    /// The localized name of this move is `"Astral Barrage"` in English and
    /// `"アストラルビット"` in Japanese.
    ///
    /// The move's raw value is `"astral-barrage"`.
    static let astralBarrage = AstralBarrageMove.move
}

enum AstralBarrageMove {
    static let move = PokemonMove(rawValue: "astral-barrage")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Astral Barrage",
            .japanese: "アストラルビット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let astralBarrage = AstralBarrageMove.definition
}
