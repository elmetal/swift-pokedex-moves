import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かえんぐるま in Japanese.
    ///
    /// The localized name of this move is `"Flame Wheel"` in English and
    /// `"かえんぐるま"` in Japanese.
    ///
    /// The move's raw value is `"flame-wheel"`.
    static let flameWheel = FlameWheelMove.move
}

enum FlameWheelMove {
    static let move = PokemonMove(rawValue: "flame-wheel")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 25,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 25,
        power: .fixed(60),
        hits: .one,
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
            .english: "Flame Wheel",
            .japanese: "かえんぐるま",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flameWheel = FlameWheelMove.definition
}
