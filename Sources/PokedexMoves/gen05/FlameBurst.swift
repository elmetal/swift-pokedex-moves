import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はじけるほのお in Japanese.
    ///
    /// The localized name of this move is `"Flame Burst"` in English and
    /// `"はじけるほのお"` in Japanese.
    ///
    /// The move's raw value is `"flame-burst"`.
    static let flameBurst = FlameBurstMove.move
}

enum FlameBurstMove {
    static let move = PokemonMove(rawValue: "flame-burst")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
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
            .english: "Flame Burst",
            .japanese: "はじけるほのお",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flameBurst = FlameBurstMove.definition
}
