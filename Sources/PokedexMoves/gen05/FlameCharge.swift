import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ニトロチャージ in Japanese.
    ///
    /// The localized name of this move is `"Flame Charge"` in English and
    /// `"ニトロチャージ"` in Japanese.
    ///
    /// The move's raw value is `"flame-charge"`.
    static let flameCharge = FlameChargeMove.move
}

enum FlameChargeMove {
    static let move = PokemonMove(rawValue: "flame-charge")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 20,
        power: .fixed(50),
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
            .english: "Flame Charge",
            .japanese: "ニトロチャージ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flameCharge = FlameChargeMove.definition
}
