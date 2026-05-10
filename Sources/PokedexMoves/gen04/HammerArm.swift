import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アームハンマー in Japanese.
    ///
    /// The localized name of this move is `"Hammer Arm"` in English and
    /// `"アームハンマー"` in Japanese.
    ///
    /// The move's raw value is `"hammer-arm"`.
    static let hammerArm = HammerArmMove.move
}

enum HammerArmMove {
    static let move = PokemonMove(rawValue: "hammer-arm")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(100),
        hits: .one,
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
            .english: "Hammer Arm",
            .japanese: "アームハンマー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hammerArm = HammerArmMove.definition
}
