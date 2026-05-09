import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふきとばし in Japanese.
    ///
    /// The localized name of this move is `"Whirlwind"` in English and
    /// `"ふきとばし"` in Japanese.
    ///
    /// The move's raw value is `"whirlwind"`.
    static let whirlwind = WhirlwindMove.move
}

enum WhirlwindMove {
    static let move = PokemonMove(rawValue: "whirlwind")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: -6,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: -6,
        category: .status,
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
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                ],
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
            .english: "Whirlwind",
            .japanese: "ふきとばし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let whirlwind = WhirlwindMove.definition
}
