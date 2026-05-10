import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とびかかる in Japanese.
    ///
    /// The localized name of this move is `"Lunge"` in English and
    /// `"とびかかる"` in Japanese.
    ///
    /// The move's raw value is `"lunge"`.
    static let lunge = LungeMove.move
}

enum LungeMove {
    static let move = PokemonMove(rawValue: "lunge")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
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
            .english: "Lunge",
            .japanese: "とびかかる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lunge = LungeMove.definition
}
