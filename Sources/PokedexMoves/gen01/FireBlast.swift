import Foundation

public extension PokemonMove {
    /// The Pokemon move known as だいもんじ in Japanese.
    ///
    /// The localized name of this move is `"Fire Blast"` in English and
    /// `"だいもんじ"` in Japanese.
    ///
    /// The move's raw value is `"fire-blast"`.
    static let fireBlast = FireBlastMove.move
}

enum FireBlastMove {
    static let move = PokemonMove(rawValue: "fire-blast")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(110),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Fire Blast",
            .japanese: "だいもんじ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fireBlast = FireBlastMove.definition
}
