import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダブルチョップ in Japanese.
    ///
    /// The localized name of this move is `"Dual Chop"` in English and
    /// `"ダブルチョップ"` in Japanese.
    ///
    /// The move's raw value is `"dual-chop"`.
    static let dualChop = DualChopMove.move
}

enum DualChopMove {
    static let move = PokemonMove(rawValue: "dual-chop")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 15,
        power: .fixed(40),
        hits: .fixed(2),
        accuracy: .percent(90),
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
            .english: "Dual Chop",
            .japanese: "ダブルチョップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dualChop = DualChopMove.definition
}
