import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じばそうさ in Japanese.
    ///
    /// The localized name of this move is `"Magnetic Flux"` in English and
    /// `"じばそうさ"` in Japanese.
    ///
    /// The move's raw value is `"magnetic-flux"`.
    static let magneticFlux = MagneticFluxMove.move
}

enum MagneticFluxMove {
    static let move = PokemonMove(rawValue: "magnetic-flux")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userAndAllies
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
            .english: "Magnetic Flux",
            .japanese: "じばそうさ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magneticFlux = MagneticFluxMove.definition
}
