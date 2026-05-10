import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メタルバースト in Japanese.
    ///
    /// The localized name of this move is `"Metal Burst"` in English and
    /// `"メタルバースト"` in Japanese.
    ///
    /// The move's raw value is `"metal-burst"`.
    static let metalBurst = MetalBurstMove.move
}

enum MetalBurstMove {
    static let move = PokemonMove(rawValue: "metal-burst")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .move
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
            .english: "Metal Burst",
            .japanese: "メタルバースト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let metalBurst = MetalBurstMove.definition
}
