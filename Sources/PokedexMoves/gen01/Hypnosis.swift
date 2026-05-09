import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さいみんじゅつ in Japanese.
    ///
    /// The localized name of this move is `"Hypnosis"` in English and
    /// `"さいみんじゅつ"` in Japanese.
    ///
    /// The move's raw value is `"hypnosis"`.
    static let hypnosis = Hypnosis.move
}

enum Hypnosis {
    static let move = PokemonMove(rawValue: "hypnosis")
    static let accuracy60 = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        accuracy: .percent(60),
        priority: 0,
        category: .status,
        target: .target
    )
    static let accuracy70 = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        accuracy: .percent(70),
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
                ],
                parameters: accuracy60
            ),
            .init(
                versionGroups: [.diamondPearl],
                parameters: accuracy70
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
                parameters: accuracy60
            ),
        ],
        localizedNames: [
            .english: "Hypnosis",
            .japanese: "さいみんじゅつ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hypnosis = Hypnosis.definition
}

