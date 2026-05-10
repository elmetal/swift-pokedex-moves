import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メテオドライブ in Japanese.
    ///
    /// The localized name of this move is `"Sunsteel Strike"` in English and
    /// `"メテオドライブ"` in Japanese.
    ///
    /// The move's raw value is `"sunsteel-strike"`.
    static let sunsteelStrike = SunsteelStrikeMove.move
}

enum SunsteelStrikeMove {
    static let move = PokemonMove(rawValue: "sunsteel-strike")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(100),
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
            .english: "Sunsteel Strike",
            .japanese: "メテオドライブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sunsteelStrike = SunsteelStrikeMove.definition
}
