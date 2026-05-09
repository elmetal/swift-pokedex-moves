import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコウェーブ in Japanese.
    ///
    /// The localized name of this move is `"Psywave"` in English and
    /// `"サイコウェーブ"` in Japanese.
    ///
    /// The move's raw value is `"psywave"`.
    static let psywave = PsywaveMove.move
}

enum PsywaveMove {
    static let move = PokemonMove(rawValue: "psywave")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .varies,
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .varies,
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
            .english: "Psywave",
            .japanese: "サイコウェーブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psywave = PsywaveMove.definition
}
