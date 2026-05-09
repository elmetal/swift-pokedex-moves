import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ソニックブーム in Japanese.
    ///
    /// The localized name of this move is `"Sonic Boom"` in English and
    /// `"ソニックブーム"` in Japanese.
    ///
    /// The move's raw value is `"sonic-boom"`.
    static let sonicBoom = SonicBoomMove.move
}

enum SonicBoomMove {
    static let move = PokemonMove(rawValue: "sonic-boom")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Sonic Boom",
            .japanese: "ソニックブーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sonicBoom = SonicBoomMove.definition
}
