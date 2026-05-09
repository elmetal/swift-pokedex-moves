import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さいみんじゅつ in Japanese.
    ///
    /// The localized name of this move is `"Hypnosis"` in English and
    /// `"さいみんじゅつ"` in Japanese.
    ///
    /// The move's raw value is `"hypnosis"`.
    static let hypnosis = HypnosisMove.move
}

enum HypnosisMove {
    static let move = PokemonMove(rawValue: "hypnosis")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(60),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Hypnosis",
            .japanese: "さいみんじゅつ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hypnosis = HypnosisMove.definition
}
