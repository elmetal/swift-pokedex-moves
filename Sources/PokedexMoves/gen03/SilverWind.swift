import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぎんいろのかぜ in Japanese.
    ///
    /// The localized name of this move is `"Silver Wind"` in English and
    /// `"ぎんいろのかぜ"` in Japanese.
    ///
    /// The move's raw value is `"silver-wind"`.
    static let silverWind = SilverWindMove.move
}

enum SilverWindMove {
    static let move = PokemonMove(rawValue: "silver-wind")
    static let parameters1 = PokemonMove.Parameters(
        type: .bug,
        pp: 5,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .bug,
        pp: 5,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Silver Wind",
            .japanese: "ぎんいろのかぜ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let silverWind = SilverWindMove.definition
}
