import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うずしお in Japanese.
    ///
    /// The localized name of this move is `"Whirlpool"` in English and
    /// `"うずしお"` in Japanese.
    ///
    /// The move's raw value is `"whirlpool"`.
    static let whirlpool = WhirlpoolMove.move
}

enum WhirlpoolMove {
    static let move = PokemonMove(rawValue: "whirlpool")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(15),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Whirlpool",
            .japanese: "うずしお",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let whirlpool = WhirlpoolMove.definition
}
