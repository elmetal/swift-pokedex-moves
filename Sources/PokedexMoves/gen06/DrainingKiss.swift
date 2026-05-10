import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドレインキッス in Japanese.
    ///
    /// The localized name of this move is `"Draining Kiss"` in English and
    /// `"ドレインキッス"` in Japanese.
    ///
    /// The move's raw value is `"draining-kiss"`.
    static let drainingKiss = DrainingKissMove.move
}

enum DrainingKissMove {
    static let move = PokemonMove(rawValue: "draining-kiss")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Draining Kiss",
            .japanese: "ドレインキッス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let drainingKiss = DrainingKissMove.definition
}
