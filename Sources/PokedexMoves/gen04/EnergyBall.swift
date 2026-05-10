import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エナジーボール in Japanese.
    ///
    /// The localized name of this move is `"Energy Ball"` in English and
    /// `"エナジーボール"` in Japanese.
    ///
    /// The move's raw value is `"energy-ball"`.
    static let energyBall = EnergyBallMove.move
}

enum EnergyBallMove {
    static let move = PokemonMove(rawValue: "energy-ball")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Energy Ball",
            .japanese: "エナジーボール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let energyBall = EnergyBallMove.definition
}
