import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こんげんのはどう in Japanese.
    ///
    /// The localized name of this move is `"Origin Pulse"` in English and
    /// `"こんげんのはどう"` in Japanese.
    ///
    /// The move's raw value is `"origin-pulse"`.
    static let originPulse = OriginPulseMove.move
}

enum OriginPulseMove {
    static let move = PokemonMove(rawValue: "origin-pulse")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(110),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
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
            .english: "Origin Pulse",
            .japanese: "こんげんのはどう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let originPulse = OriginPulseMove.definition
}
