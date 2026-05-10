import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャドースチール in Japanese.
    ///
    /// The localized name of this move is `"Spectral Thief"` in English and
    /// `"シャドースチール"` in Japanese.
    ///
    /// The move's raw value is `"spectral-thief"`.
    static let spectralThief = SpectralThiefMove.move
}

enum SpectralThiefMove {
    static let move = PokemonMove(rawValue: "spectral-thief")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Spectral Thief",
            .japanese: "シャドースチール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spectralThief = SpectralThiefMove.definition
}
