import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダブルアタック in Japanese.
    ///
    /// The localized name of this move is `"Double Hit"` in English and
    /// `"ダブルアタック"` in Japanese.
    ///
    /// The move's raw value is `"double-hit"`.
    static let doubleHit = DoubleHitMove.move
}

enum DoubleHitMove {
    static let move = PokemonMove(rawValue: "double-hit")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(35),
        hits: .fixed(2),
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
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
            .english: "Double Hit",
            .japanese: "ダブルアタック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doubleHit = DoubleHitMove.definition
}
