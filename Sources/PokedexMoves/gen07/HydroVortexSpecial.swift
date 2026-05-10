import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スーパーアクアトルネード in Japanese.
    ///
    /// The localized name of this move is `"Hydro Vortex"` in English and
    /// `"スーパーアクアトルネード"` in Japanese.
    ///
    /// The move's raw value is `"hydro-vortex--special"`.
    static let hydroVortexSpecial = HydroVortexSpecialMove.move
}

enum HydroVortexSpecialMove {
    static let move = PokemonMove(rawValue: "hydro-vortex--special")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
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
            .english: "Hydro Vortex",
            .japanese: "スーパーアクアトルネード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hydroVortexSpecial = HydroVortexSpecialMove.definition
}
