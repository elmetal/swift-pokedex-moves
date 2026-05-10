import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どくのいと in Japanese.
    ///
    /// The localized name of this move is `"Toxic Thread"` in English and
    /// `"どくのいと"` in Japanese.
    ///
    /// The move's raw value is `"toxic-thread"`.
    static let toxicThread = ToxicThreadMove.move
}

enum ToxicThreadMove {
    static let move = PokemonMove(rawValue: "toxic-thread")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Toxic Thread",
            .japanese: "どくのいと",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let toxicThread = ToxicThreadMove.definition
}
