import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スーパーアクアトルネード in Japanese.
    ///
    /// The localized name of this move is `"Hydro Vortex"` in English and
    /// `"スーパーアクアトルネード"` in Japanese.
    ///
    /// The move's raw value is `"hydro-vortex--physical"`.
    static let hydroVortexPhysical = HydroVortexPhysicalMove.move
}

enum HydroVortexPhysicalMove {
    static let move = PokemonMove(rawValue: "hydro-vortex--physical")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Hydro Vortex",
            .japanese: "スーパーアクアトルネード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hydroVortexPhysical = HydroVortexPhysicalMove.definition
}
