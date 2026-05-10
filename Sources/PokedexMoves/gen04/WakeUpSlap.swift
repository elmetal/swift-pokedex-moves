import Foundation

public extension PokemonMove {
    /// The Pokemon move known as めざましビンタ in Japanese.
    ///
    /// The localized name of this move is `"Wake-Up Slap"` in English and
    /// `"めざましビンタ"` in Japanese.
    ///
    /// The move's raw value is `"wake-up-slap"`.
    static let wakeUpSlap = WakeUpSlapMove.move
}

enum WakeUpSlapMove {
    static let move = PokemonMove(rawValue: "wake-up-slap")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Wake-Up Slap",
            .japanese: "めざましビンタ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wakeUpSlap = WakeUpSlapMove.definition
}
