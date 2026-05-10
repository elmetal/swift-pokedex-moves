import Foundation

public extension PokemonMove {
    /// The Pokemon move known as １０まんばりき in Japanese.
    ///
    /// The localized name of this move is `"High Horsepower"` in English and
    /// `"１０まんばりき"` in Japanese.
    ///
    /// The move's raw value is `"high-horsepower"`.
    static let highHorsepower = HighHorsepowerMove.move
}

enum HighHorsepowerMove {
    static let move = PokemonMove(rawValue: "high-horsepower")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "High Horsepower",
            .japanese: "１０まんばりき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let highHorsepower = HighHorsepowerMove.definition
}
