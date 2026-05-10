import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゲップ in Japanese.
    ///
    /// The localized name of this move is `"Belch"` in English and
    /// `"ゲップ"` in Japanese.
    ///
    /// The move's raw value is `"belch"`.
    static let belch = BelchMove.move
}

enum BelchMove {
    static let move = PokemonMove(rawValue: "belch")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Belch",
            .japanese: "ゲップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let belch = BelchMove.definition
}
