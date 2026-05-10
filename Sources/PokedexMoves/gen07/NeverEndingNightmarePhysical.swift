import Foundation

public extension PokemonMove {
    /// The Pokemon move known as むげんあんやへのいざない in Japanese.
    ///
    /// The localized name of this move is `"Never-Ending Nightmare"` in English and
    /// `"むげんあんやへのいざない"` in Japanese.
    ///
    /// The move's raw value is `"never-ending-nightmare--physical"`.
    static let neverEndingNightmarePhysical = NeverEndingNightmarePhysicalMove.move
}

enum NeverEndingNightmarePhysicalMove {
    static let move = PokemonMove(rawValue: "never-ending-nightmare--physical")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 1,
        power: .varies,
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
            .english: "Never-Ending Nightmare",
            .japanese: "むげんあんやへのいざない",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let neverEndingNightmarePhysical = NeverEndingNightmarePhysicalMove.definition
}
