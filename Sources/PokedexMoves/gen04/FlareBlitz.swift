import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フレアドライブ in Japanese.
    ///
    /// The localized name of this move is `"Flare Blitz"` in English and
    /// `"フレアドライブ"` in Japanese.
    ///
    /// The move's raw value is `"flare-blitz"`.
    static let flareBlitz = FlareBlitzMove.move
}

enum FlareBlitzMove {
    static let move = PokemonMove(rawValue: "flare-blitz")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
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
            .english: "Flare Blitz",
            .japanese: "フレアドライブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flareBlitz = FlareBlitzMove.definition
}
