import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ロケットずつき in Japanese.
    ///
    /// The localized name of this move is `"Skull Bash"` in English and
    /// `"ロケットずつき"` in Japanese.
    ///
    /// The move's raw value is `"skull-bash"`.
    static let skullBash = SkullBashMove.move
}

enum SkullBashMove {
    static let move = PokemonMove(rawValue: "skull-bash")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Skull Bash",
            .japanese: "ロケットずつき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let skullBash = SkullBashMove.definition
}
