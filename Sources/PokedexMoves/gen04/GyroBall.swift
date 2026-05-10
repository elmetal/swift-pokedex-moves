import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ジャイロボール in Japanese.
    ///
    /// The localized name of this move is `"Gyro Ball"` in English and
    /// `"ジャイロボール"` in Japanese.
    ///
    /// The move's raw value is `"gyro-ball"`.
    static let gyroBall = GyroBallMove.move
}

enum GyroBallMove {
    static let move = PokemonMove(rawValue: "gyro-ball")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .varies,
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
            .english: "Gyro Ball",
            .japanese: "ジャイロボール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gyroBall = GyroBallMove.definition
}
