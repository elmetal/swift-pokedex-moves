import Foundation

public extension PokemonMove {
    /// The Pokemon move known as わだつみのシンフォニア in Japanese.
    ///
    /// The localized name of this move is `"Oceanic Operetta"` in English and
    /// `"わだつみのシンフォニア"` in Japanese.
    ///
    /// The move's raw value is `"oceanic-operetta"`.
    static let oceanicOperetta = OceanicOperettaMove.move
}

enum OceanicOperettaMove {
    static let move = PokemonMove(rawValue: "oceanic-operetta")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 1,
        power: .fixed(195),
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
            .english: "Oceanic Operetta",
            .japanese: "わだつみのシンフォニア",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let oceanicOperetta = OceanicOperettaMove.definition
}
