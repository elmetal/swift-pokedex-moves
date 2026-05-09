import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あわ in Japanese.
    ///
    /// The localized name of this move is `"Bubble"` in English and
    /// `"あわ"` in Japanese.
    ///
    /// The move's raw value is `"bubble"`.
    static let bubble = BubbleMove.move
}

enum BubbleMove {
    static let move = PokemonMove(rawValue: "bubble")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 30,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
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
            .english: "Bubble",
            .japanese: "あわ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bubble = BubbleMove.definition
}
