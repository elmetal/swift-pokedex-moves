import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しちせいだっこんたい in Japanese.
    ///
    /// The localized name of this move is `"Soul-Stealing 7-Star Strike"` in English and
    /// `"しちせいだっこんたい"` in Japanese.
    ///
    /// The move's raw value is `"soul-stealing-7-star-strike"`.
    static let soulStealing7StarStrike = SoulStealing7StarStrikeMove.move
}

enum SoulStealing7StarStrikeMove {
    static let move = PokemonMove(rawValue: "soul-stealing-7-star-strike")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 1,
        power: .fixed(195),
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
            .english: "Soul-Stealing 7-Star Strike",
            .japanese: "しちせいだっこんたい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let soulStealing7StarStrike = SoulStealing7StarStrikeMove.definition
}
