import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アロマミスト in Japanese.
    ///
    /// The localized name of this move is `"Aromatic Mist"` in English and
    /// `"アロマミスト"` in Japanese.
    ///
    /// The move's raw value is `"aromatic-mist"`.
    static let aromaticMist = AromaticMistMove.move
}

enum AromaticMistMove {
    static let move = PokemonMove(rawValue: "aromatic-mist")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 20,
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
            .english: "Aromatic Mist",
            .japanese: "アロマミスト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aromaticMist = AromaticMistMove.definition
}
