import Foundation

public extension PokemonMove {
    /// The Pokemon move known as てをつなぐ in Japanese.
    ///
    /// The localized name of this move is `"Hold Hands"` in English and
    /// `"てをつなぐ"` in Japanese.
    ///
    /// The move's raw value is `"hold-hands"`.
    static let holdHands = HoldHandsMove.move
}

enum HoldHandsMove {
    static let move = PokemonMove(rawValue: "hold-hands")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .ally
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Hold Hands",
            .japanese: "てをつなぐ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let holdHands = HoldHandsMove.definition
}
