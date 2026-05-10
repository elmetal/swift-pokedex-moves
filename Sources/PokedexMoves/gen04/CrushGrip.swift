import Foundation

public extension PokemonMove {
    /// The Pokemon move known as にぎりつぶす in Japanese.
    ///
    /// The localized name of this move is `"Crush Grip"` in English and
    /// `"にぎりつぶす"` in Japanese.
    ///
    /// The move's raw value is `"crush-grip"`.
    static let crushGrip = CrushGripMove.move
}

enum CrushGripMove {
    static let move = PokemonMove(rawValue: "crush-grip")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .varies,
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
            .english: "Crush Grip",
            .japanese: "にぎりつぶす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let crushGrip = CrushGripMove.definition
}
