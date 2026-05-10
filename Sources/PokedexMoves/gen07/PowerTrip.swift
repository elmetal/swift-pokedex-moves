import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つけあがる in Japanese.
    ///
    /// The localized name of this move is `"Power Trip"` in English and
    /// `"つけあがる"` in Japanese.
    ///
    /// The move's raw value is `"power-trip"`.
    static let powerTrip = PowerTripMove.move
}

enum PowerTripMove {
    static let move = PokemonMove(rawValue: "power-trip")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(20),
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
            .english: "Power Trip",
            .japanese: "つけあがる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powerTrip = PowerTripMove.definition
}
