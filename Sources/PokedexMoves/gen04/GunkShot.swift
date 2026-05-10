import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダストシュート in Japanese.
    ///
    /// The localized name of this move is `"Gunk Shot"` in English and
    /// `"ダストシュート"` in Japanese.
    ///
    /// The move's raw value is `"gunk-shot"`.
    static let gunkShot = GunkShotMove.move
}

enum GunkShotMove {
    static let move = PokemonMove(rawValue: "gunk-shot")
    static let parameters1 = PokemonMove.Parameters(
        type: .poison,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .poison,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Gunk Shot",
            .japanese: "ダストシュート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gunkShot = GunkShotMove.definition
}
