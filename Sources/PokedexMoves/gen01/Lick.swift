import Foundation

public extension PokemonMove {
    /// The Pokemon move known as したでなめる in Japanese.
    ///
    /// The localized name of this move is `"Lick"` in English and
    /// `"したでなめる"` in Japanese.
    ///
    /// The move's raw value is `"lick"`.
    static let lick = LickMove.move
}

enum LickMove {
    static let move = PokemonMove(rawValue: "lick")
    static let parameters1 = PokemonMove.Parameters(
        type: .ghost,
        pp: 30,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ghost,
        pp: 30,
        power: .fixed(30),
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
            .english: "Lick",
            .japanese: "したでなめる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lick = LickMove.definition
}
