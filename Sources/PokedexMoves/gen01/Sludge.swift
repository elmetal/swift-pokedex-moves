import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ヘドロこうげき in Japanese.
    ///
    /// The localized name of this move is `"Sludge"` in English and
    /// `"ヘドロこうげき"` in Japanese.
    ///
    /// The move's raw value is `"sludge"`.
    static let sludge = SludgeMove.move
}

enum SludgeMove {
    static let move = PokemonMove(rawValue: "sludge")
    static let parameters1 = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Sludge",
            .japanese: "ヘドロこうげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sludge = SludgeMove.definition
}
