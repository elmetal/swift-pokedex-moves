import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふくろだたき in Japanese.
    ///
    /// The localized name of this move is `"Beat Up"` in English and
    /// `"ふくろだたき"` in Japanese.
    ///
    /// The move's raw value is `"beat-up"`.
    static let beatUp = BeatUpMove.move
}

enum BeatUpMove {
    static let move = PokemonMove(rawValue: "beat-up")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(10),
        hits: .varies,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(10),
        hits: .varies,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .varies,
        hits: .varies,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
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
                ],
                parameters: parameters2
            ),
            .init(
                versionGroups: [
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Beat Up",
            .japanese: "ふくろだたき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let beatUp = BeatUpMove.definition
}
