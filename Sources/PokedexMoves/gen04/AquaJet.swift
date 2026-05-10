import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクアジェット in Japanese.
    ///
    /// The localized name of this move is `"Aqua Jet"` in English and
    /// `"アクアジェット"` in Japanese.
    ///
    /// The move's raw value is `"aqua-jet"`.
    static let aquaJet = AquaJetMove.move
}

enum AquaJetMove {
    static let move = PokemonMove(rawValue: "aqua-jet")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
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
            .english: "Aqua Jet",
            .japanese: "アクアジェット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aquaJet = AquaJetMove.definition
}
