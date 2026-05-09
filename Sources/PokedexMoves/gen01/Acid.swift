import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ようかいえき in Japanese.
    ///
    /// The localized name of this move is `"Acid"` in English and
    /// `"ようかいえき"` in Japanese.
    ///
    /// The move's raw value is `"acid"`.
    static let acid = AcidMove.move
}

enum AcidMove {
    static let move = PokemonMove(rawValue: "acid")
    static let parameters1 = PokemonMove.Parameters(
        type: .poison,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .poison,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Acid",
            .japanese: "ようかいえき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let acid = AcidMove.definition
}
