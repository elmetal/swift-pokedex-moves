import Foundation

public extension PokemonMove {
    /// The Pokemon move known as でんじは in Japanese.
    ///
    /// The localized name of this move is `"Thunder Wave"` in English and
    /// `"でんじは"` in Japanese.
    ///
    /// The move's raw value is `"thunder-wave"`.
    static let thunderWave = ThunderWaveMove.move
}

enum ThunderWaveMove {
    static let move = PokemonMove(rawValue: "thunder-wave")
    static let parameters1 = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
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
                    .xY,
                    .omegaRubyAlphaSapphire,
                ],
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
            .english: "Thunder Wave",
            .japanese: "でんじは",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunderWave = ThunderWaveMove.definition
}
