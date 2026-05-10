import Foundation

public extension PokemonMove {
    /// The Pokemon move known as びりびりちくちく in Japanese.
    ///
    /// The localized name of this move is `"Zing Zap"` in English and
    /// `"びりびりちくちく"` in Japanese.
    ///
    /// The move's raw value is `"zing-zap"`.
    static let zingZap = ZingZapMove.move
}

enum ZingZapMove {
    static let move = PokemonMove(rawValue: "zing-zap")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Zing Zap",
            .japanese: "びりびりちくちく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let zingZap = ZingZapMove.definition
}
