import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクアテール in Japanese.
    ///
    /// The localized name of this move is `"Aqua Tail"` in English and
    /// `"アクアテール"` in Japanese.
    ///
    /// The move's raw value is `"aqua-tail"`.
    static let aquaTail = AquaTailMove.move
}

enum AquaTailMove {
    static let move = PokemonMove(rawValue: "aqua-tail")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Aqua Tail",
            .japanese: "アクアテール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aquaTail = AquaTailMove.definition
}
