import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミラーショット in Japanese.
    ///
    /// The localized name of this move is `"Mirror Shot"` in English and
    /// `"ミラーショット"` in Japanese.
    ///
    /// The move's raw value is `"mirror-shot"`.
    static let mirrorShot = MirrorShotMove.move
}

enum MirrorShotMove {
    static let move = PokemonMove(rawValue: "mirror-shot")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
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
            .english: "Mirror Shot",
            .japanese: "ミラーショット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mirrorShot = MirrorShotMove.definition
}
