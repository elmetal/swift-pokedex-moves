import Foundation

public extension PokemonMove {
    /// The Pokemon move known as わるだくみ in Japanese.
    ///
    /// The localized name of this move is `"Nasty Plot"` in English and
    /// `"わるだくみ"` in Japanese.
    ///
    /// The move's raw value is `"nasty-plot"`.
    static let nastyPlot = NastyPlotMove.move
}

enum NastyPlotMove {
    static let move = PokemonMove(rawValue: "nasty-plot")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Nasty Plot",
            .japanese: "わるだくみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let nastyPlot = NastyPlotMove.definition
}
