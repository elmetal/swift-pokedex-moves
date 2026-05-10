import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ちょうぜつらせんれんげき in Japanese.
    ///
    /// The localized name of this move is `"Corkscrew Crash"` in English and
    /// `"ちょうぜつらせんれんげき"` in Japanese.
    ///
    /// The move's raw value is `"corkscrew-crash--special"`.
    static let corkscrewCrashSpecial = CorkscrewCrashSpecialMove.move
}

enum CorkscrewCrashSpecialMove {
    static let move = PokemonMove(rawValue: "corkscrew-crash--special")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Corkscrew Crash",
            .japanese: "ちょうぜつらせんれんげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let corkscrewCrashSpecial = CorkscrewCrashSpecialMove.definition
}
