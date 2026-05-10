import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うたかたのアリア in Japanese.
    ///
    /// The localized name of this move is `"Sparkling Aria"` in English and
    /// `"うたかたのアリア"` in Japanese.
    ///
    /// The move's raw value is `"sparkling-aria"`.
    static let sparklingAria = SparklingAriaMove.move
}

enum SparklingAriaMove {
    static let move = PokemonMove(rawValue: "sparkling-aria")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
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
            .english: "Sparkling Aria",
            .japanese: "うたかたのアリア",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sparklingAria = SparklingAriaMove.definition
}
