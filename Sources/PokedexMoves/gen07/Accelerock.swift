import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクセルロック in Japanese.
    ///
    /// The localized name of this move is `"Accelerock"` in English and
    /// `"アクセルロック"` in Japanese.
    ///
    /// The move's raw value is `"accelerock"`.
    static let accelerock = AccelerockMove.move
}

enum AccelerockMove {
    static let move = PokemonMove(rawValue: "accelerock")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 20,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
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
            .english: "Accelerock",
            .japanese: "アクセルロック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let accelerock = AccelerockMove.definition
}
