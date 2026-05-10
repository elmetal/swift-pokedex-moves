import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かげぬい in Japanese.
    ///
    /// The localized name of this move is `"Spirit Shackle"` in English and
    /// `"かげぬい"` in Japanese.
    ///
    /// The move's raw value is `"spirit-shackle"`.
    static let spiritShackle = SpiritShackleMove.move
}

enum SpiritShackleMove {
    static let move = PokemonMove(rawValue: "spirit-shackle")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Spirit Shackle",
            .japanese: "かげぬい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spiritShackle = SpiritShackleMove.definition
}
