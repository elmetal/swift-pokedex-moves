import Foundation

public extension PokemonMove {
    /// The Pokemon move known as インファイト in Japanese.
    ///
    /// The localized name of this move is `"Close Combat"` in English and
    /// `"インファイト"` in Japanese.
    ///
    /// The move's raw value is `"close-combat"`.
    static let closeCombat = CloseCombatMove.move
}

enum CloseCombatMove {
    static let move = PokemonMove(rawValue: "close-combat")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Close Combat",
            .japanese: "インファイト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let closeCombat = CloseCombatMove.definition
}
