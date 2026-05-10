import Foundation

public extension PokemonMove {
    /// The Pokemon move known as まとわりつく in Japanese.
    ///
    /// The localized name of this move is `"Infestation"` in English and
    /// `"まとわりつく"` in Japanese.
    ///
    /// The move's raw value is `"infestation"`.
    static let infestation = InfestationMove.move
}

enum InfestationMove {
    static let move = PokemonMove(rawValue: "infestation")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Infestation",
            .japanese: "まとわりつく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let infestation = InfestationMove.definition
}
