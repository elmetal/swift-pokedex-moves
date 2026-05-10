import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しっぺがえし in Japanese.
    ///
    /// The localized name of this move is `"Payback"` in English and
    /// `"しっぺがえし"` in Japanese.
    ///
    /// The move's raw value is `"payback"`.
    static let payback = PaybackMove.move
}

enum PaybackMove {
    static let move = PokemonMove(rawValue: "payback")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(50),
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
            .english: "Payback",
            .japanese: "しっぺがえし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let payback = PaybackMove.definition
}
