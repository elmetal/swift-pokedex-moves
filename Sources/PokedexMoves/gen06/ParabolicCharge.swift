import Foundation

public extension PokemonMove {
    /// The Pokemon move known as パラボラチャージ in Japanese.
    ///
    /// The localized name of this move is `"Parabolic Charge"` in English and
    /// `"パラボラチャージ"` in Japanese.
    ///
    /// The move's raw value is `"parabolic-charge"`.
    static let parabolicCharge = ParabolicChargeMove.move
}

enum ParabolicChargeMove {
    static let move = PokemonMove(rawValue: "parabolic-charge")
    static let parameters1 = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [.xY, .omegaRubyAlphaSapphire],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Parabolic Charge",
            .japanese: "パラボラチャージ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let parabolicCharge = ParabolicChargeMove.definition
}
