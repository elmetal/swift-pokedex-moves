import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かまいたち in Japanese.
    ///
    /// The localized name of this move is `"Razor Wind"` in English and
    /// `"かまいたち"` in Japanese.
    ///
    /// The move's raw value is `"razor-wind"`.
    static let razorWind = RazorWindMove.move
}

enum RazorWindMove {
    static let move = PokemonMove(rawValue: "razor-wind")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(80),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Razor Wind",
            .japanese: "かまいたち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let razorWind = RazorWindMove.definition
}
