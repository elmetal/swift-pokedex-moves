import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイヤストーム in Japanese.
    ///
    /// The localized name of this move is `"Diamond Storm"` in English and
    /// `"ダイヤストーム"` in Japanese.
    ///
    /// The move's raw value is `"diamond-storm"`.
    static let diamondStorm = DiamondStormMove.move
}

enum DiamondStormMove {
    static let move = PokemonMove(rawValue: "diamond-storm")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
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
            .english: "Diamond Storm",
            .japanese: "ダイヤストーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let diamondStorm = DiamondStormMove.definition
}
