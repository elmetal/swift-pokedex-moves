import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じごくづき in Japanese.
    ///
    /// The localized name of this move is `"Throat Chop"` in English and
    /// `"じごくづき"` in Japanese.
    ///
    /// The move's raw value is `"throat-chop"`.
    static let throatChop = ThroatChopMove.move
}

enum ThroatChopMove {
    static let move = PokemonMove(rawValue: "throat-chop")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(80),
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
            .english: "Throat Chop",
            .japanese: "じごくづき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let throatChop = ThroatChopMove.definition
}
