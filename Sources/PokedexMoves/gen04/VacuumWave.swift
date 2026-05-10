import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しんくうは in Japanese.
    ///
    /// The localized name of this move is `"Vacuum Wave"` in English and
    /// `"しんくうは"` in Japanese.
    ///
    /// The move's raw value is `"vacuum-wave"`.
    static let vacuumWave = VacuumWaveMove.move
}

enum VacuumWaveMove {
    static let move = PokemonMove(rawValue: "vacuum-wave")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
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
            .english: "Vacuum Wave",
            .japanese: "しんくうは",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let vacuumWave = VacuumWaveMove.definition
}
