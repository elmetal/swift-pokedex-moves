import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゴーストダイブ in Japanese.
    ///
    /// The localized name of this move is `"Phantom Force"` in English and
    /// `"ゴーストダイブ"` in Japanese.
    ///
    /// The move's raw value is `"phantom-force"`.
    static let phantomForce = PhantomForceMove.move
}

enum PhantomForceMove {
    static let move = PokemonMove(rawValue: "phantom-force")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
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
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
                    .xY,
                    .omegaRubyAlphaSapphire,
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
            .english: "Phantom Force",
            .japanese: "ゴーストダイブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let phantomForce = PhantomForceMove.definition
}
