import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みらいよち in Japanese.
    ///
    /// The localized name of this move is `"Future Sight"` in English and
    /// `"みらいよち"` in Japanese.
    ///
    /// The move's raw value is `"future-sight"`.
    static let futureSight = FutureSightMove.move
}

enum FutureSightMove {
    static let move = PokemonMove(rawValue: "future-sight")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Future Sight",
            .japanese: "みらいよち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let futureSight = FutureSightMove.definition
}
