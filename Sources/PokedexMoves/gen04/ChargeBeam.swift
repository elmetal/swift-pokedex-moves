import Foundation

public extension PokemonMove {
    /// The Pokemon move known as チャージビーム in Japanese.
    ///
    /// The localized name of this move is `"Charge Beam"` in English and
    /// `"チャージビーム"` in Japanese.
    ///
    /// The move's raw value is `"charge-beam"`.
    static let chargeBeam = ChargeBeamMove.move
}

enum ChargeBeamMove {
    static let move = PokemonMove(rawValue: "charge-beam")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
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
            .english: "Charge Beam",
            .japanese: "チャージビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let chargeBeam = ChargeBeamMove.definition
}
