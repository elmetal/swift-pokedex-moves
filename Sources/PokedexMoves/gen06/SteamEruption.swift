import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スチームバースト in Japanese.
    ///
    /// The localized name of this move is `"Steam Eruption"` in English and
    /// `"スチームバースト"` in Japanese.
    ///
    /// The move's raw value is `"steam-eruption"`.
    static let steamEruption = SteamEruptionMove.move
}

enum SteamEruptionMove {
    static let move = PokemonMove(rawValue: "steam-eruption")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 5,
        power: .fixed(110),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Steam Eruption",
            .japanese: "スチームバースト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let steamEruption = SteamEruptionMove.definition
}
