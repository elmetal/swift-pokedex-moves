import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほんきをだす　こうげき in Japanese.
    ///
    /// The localized name of this move is `"Pulverizing Pancake"` in English and
    /// `"ほんきをだす　こうげき"` in Japanese.
    ///
    /// The move's raw value is `"pulverizing-pancake"`.
    static let pulverizingPancake = PulverizingPancakeMove.move
}

enum PulverizingPancakeMove {
    static let move = PokemonMove(rawValue: "pulverizing-pancake")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 1,
        power: .fixed(210),
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
            .english: "Pulverizing Pancake",
            .japanese: "ほんきをだす　こうげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pulverizingPancake = PulverizingPancakeMove.definition
}
