import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アフロブレイク in Japanese.
    ///
    /// The localized name of this move is `"Head Charge"` in English and
    /// `"アフロブレイク"` in Japanese.
    ///
    /// The move's raw value is `"head-charge"`.
    static let headCharge = HeadChargeMove.move
}

enum HeadChargeMove {
    static let move = PokemonMove(rawValue: "head-charge")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Head Charge",
            .japanese: "アフロブレイク",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let headCharge = HeadChargeMove.definition
}
