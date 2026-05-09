import Foundation

public extension PokemonMove {
    /// The Pokemon move known as へびにらみ in Japanese.
    ///
    /// The localized name of this move is `"Glare"` in English and
    /// `"へびにらみ"` in Japanese.
    ///
    /// The move's raw value is `"glare"`.
    static let glare = GlareMove.move
}

enum GlareMove {
    static let move = PokemonMove(rawValue: "glare")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Glare",
            .japanese: "へびにらみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let glare = GlareMove.definition
}
