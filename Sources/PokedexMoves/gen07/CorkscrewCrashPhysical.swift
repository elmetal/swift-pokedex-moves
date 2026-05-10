import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ちょうぜつらせんれんげき in Japanese.
    ///
    /// The localized name of this move is `"Corkscrew Crash"` in English and
    /// `"ちょうぜつらせんれんげき"` in Japanese.
    ///
    /// The move's raw value is `"corkscrew-crash--physical"`.
    static let corkscrewCrashPhysical = CorkscrewCrashPhysicalMove.move
}

enum CorkscrewCrashPhysicalMove {
    static let move = PokemonMove(rawValue: "corkscrew-crash--physical")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
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
            .english: "Corkscrew Crash",
            .japanese: "ちょうぜつらせんれんげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let corkscrewCrashPhysical = CorkscrewCrashPhysicalMove.definition
}
