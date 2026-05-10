import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すてゼリフ in Japanese.
    ///
    /// The localized name of this move is `"Parting Shot"` in English and
    /// `"すてゼリフ"` in Japanese.
    ///
    /// The move's raw value is `"parting-shot"`.
    static let partingShot = PartingShotMove.move
}

enum PartingShotMove {
    static let move = PokemonMove(rawValue: "parting-shot")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Parting Shot",
            .japanese: "すてゼリフ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let partingShot = PartingShotMove.definition
}
