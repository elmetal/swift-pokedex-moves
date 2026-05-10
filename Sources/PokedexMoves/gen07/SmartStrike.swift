import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スマートホーン in Japanese.
    ///
    /// The localized name of this move is `"Smart Strike"` in English and
    /// `"スマートホーン"` in Japanese.
    ///
    /// The move's raw value is `"smart-strike"`.
    static let smartStrike = SmartStrikeMove.move
}

enum SmartStrikeMove {
    static let move = PokemonMove(rawValue: "smart-strike")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .fixed(70),
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
            .english: "Smart Strike",
            .japanese: "スマートホーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let smartStrike = SmartStrikeMove.definition
}
