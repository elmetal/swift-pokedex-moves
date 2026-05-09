import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あばれる in Japanese.
    ///
    /// The localized name of this move is `"Thrash"` in English and
    /// `"あばれる"` in Japanese.
    ///
    /// The move's raw value is `"thrash"`.
    static let thrash = ThrashMove.move
}

enum ThrashMove {
    static let move = PokemonMove(rawValue: "thrash")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .randomOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .randomOpposingPokemon
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
                ],
                parameters: parameters1
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Thrash",
            .japanese: "あばれる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thrash = ThrashMove.definition
}
