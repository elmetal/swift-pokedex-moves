import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ワイルドボルト in Japanese.
    ///
    /// The localized name of this move is `"Wild Charge"` in English and
    /// `"ワイルドボルト"` in Japanese.
    ///
    /// The move's raw value is `"wild-charge"`.
    static let wildCharge = WildChargeMove.move
}

enum WildChargeMove {
    static let move = PokemonMove(rawValue: "wild-charge")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Wild Charge",
            .japanese: "ワイルドボルト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wildCharge = WildChargeMove.definition
}
