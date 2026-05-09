import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つばさでうつ in Japanese.
    ///
    /// The localized name of this move is `"Wing Attack"` in English and
    /// `"つばさでうつ"` in Japanese.
    ///
    /// The move's raw value is `"wing-attack"`.
    static let wingAttack = WingAttackMove.move
}

enum WingAttackMove {
    static let move = PokemonMove(rawValue: "wing-attack")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 35,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 35,
        power: .fixed(60),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Wing Attack",
            .japanese: "つばさでうつ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wingAttack = WingAttackMove.definition
}
