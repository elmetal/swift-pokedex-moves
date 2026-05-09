import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きつけ in Japanese.
    ///
    /// The localized name of this move is `"Smelling Salts"` in English and
    /// `"きつけ"` in Japanese.
    ///
    /// The move's raw value is `"smelling-salts"`.
    static let smellingSalts = SmellingSaltsMove.move
}

enum SmellingSaltsMove {
    static let move = PokemonMove(rawValue: "smelling-salts")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                ],
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
            .english: "Smelling Salts",
            .japanese: "きつけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let smellingSalts = SmellingSaltsMove.definition
}
