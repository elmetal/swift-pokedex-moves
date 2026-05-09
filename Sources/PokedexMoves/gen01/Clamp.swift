import Foundation

public extension PokemonMove {
    /// The Pokemon move known as からではさむ in Japanese.
    ///
    /// The localized name of this move is `"Clamp"` in English and
    /// `"からではさむ"` in Japanese.
    ///
    /// The move's raw value is `"clamp"`.
    static let clamp = ClampMove.move
}

enum ClampMove {
    static let move = PokemonMove(rawValue: "clamp")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Clamp",
            .japanese: "からではさむ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let clamp = ClampMove.definition
}
