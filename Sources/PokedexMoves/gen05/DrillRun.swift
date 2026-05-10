import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドリルライナー in Japanese.
    ///
    /// The localized name of this move is `"Drill Run"` in English and
    /// `"ドリルライナー"` in Japanese.
    ///
    /// The move's raw value is `"drill-run"`.
    static let drillRun = DrillRunMove.move
}

enum DrillRunMove {
    static let move = PokemonMove(rawValue: "drill-run")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
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
            .english: "Drill Run",
            .japanese: "ドリルライナー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let drillRun = DrillRunMove.definition
}
