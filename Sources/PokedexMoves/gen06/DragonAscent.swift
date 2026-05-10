import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ガリョウテンセイ in Japanese.
    ///
    /// The localized name of this move is `"Dragon Ascent"` in English and
    /// `"ガリョウテンセイ"` in Japanese.
    ///
    /// The move's raw value is `"dragon-ascent"`.
    static let dragonAscent = DragonAscentMove.move
}

enum DragonAscentMove {
    static let move = PokemonMove(rawValue: "dragon-ascent")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Dragon Ascent",
            .japanese: "ガリョウテンセイ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dragonAscent = DragonAscentMove.definition
}
