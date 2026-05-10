import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フライングプレス in Japanese.
    ///
    /// The localized name of this move is `"Flying Press"` in English and
    /// `"フライングプレス"` in Japanese.
    ///
    /// The move's raw value is `"flying-press"`.
    static let flyingPress = FlyingPressMove.move
}

enum FlyingPressMove {
    static let move = PokemonMove(rawValue: "flying-press")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [.xY, .omegaRubyAlphaSapphire],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Flying Press",
            .japanese: "フライングプレス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flyingPress = FlyingPressMove.definition
}
