import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なげつける in Japanese.
    ///
    /// The localized name of this move is `"Fling"` in English and
    /// `"なげつける"` in Japanese.
    ///
    /// The move's raw value is `"fling"`.
    static let fling = FlingMove.move
}

enum FlingMove {
    static let move = PokemonMove(rawValue: "fling")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
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
            .english: "Fling",
            .japanese: "なげつける",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fling = FlingMove.definition
}
