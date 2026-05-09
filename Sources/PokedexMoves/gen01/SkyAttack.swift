import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゴッドバード in Japanese.
    ///
    /// The localized name of this move is `"Sky Attack"` in English and
    /// `"ゴッドバード"` in Japanese.
    ///
    /// The move's raw value is `"sky-attack"`.
    static let skyAttack = SkyAttackMove.move
}

enum SkyAttackMove {
    static let move = PokemonMove(rawValue: "sky-attack")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 5,
        power: .fixed(200),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(90),
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
                    .xY,
                    .omegaRubyAlphaSapphire,
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Sky Attack",
            .japanese: "ゴッドバード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let skyAttack = SkyAttackMove.definition
}
