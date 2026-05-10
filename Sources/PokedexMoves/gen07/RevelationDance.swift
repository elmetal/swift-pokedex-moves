import Foundation

public extension PokemonMove {
    /// The Pokemon move known as めざめるダンス in Japanese.
    ///
    /// The localized name of this move is `"Revelation Dance"` in English and
    /// `"めざめるダンス"` in Japanese.
    ///
    /// The move's raw value is `"revelation-dance"`.
    static let revelationDance = RevelationDanceMove.move
}

enum RevelationDanceMove {
    static let move = PokemonMove(rawValue: "revelation-dance")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Revelation Dance",
            .japanese: "めざめるダンス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let revelationDance = RevelationDanceMove.definition
}
