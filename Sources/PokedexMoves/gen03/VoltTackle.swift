import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ボルテッカー in Japanese.
    ///
    /// The localized name of this move is `"Volt Tackle"` in English and
    /// `"ボルテッカー"` in Japanese.
    ///
    /// The move's raw value is `"volt-tackle"`.
    static let voltTackle = VoltTackleMove.move
}

enum VoltTackleMove {
    static let move = PokemonMove(rawValue: "volt-tackle")
    static let parameters1 = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Volt Tackle",
            .japanese: "ボルテッカー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let voltTackle = VoltTackleMove.definition
}
