import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どろぼう in Japanese.
    ///
    /// The localized name of this move is `"Thief"` in English and
    /// `"どろぼう"` in Japanese.
    ///
    /// The move's raw value is `"thief"`.
    static let thief = ThiefMove.move
}

enum ThiefMove {
    static let move = PokemonMove(rawValue: "thief")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .dark,
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
                ],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Thief",
            .japanese: "どろぼう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thief = ThiefMove.definition
}
