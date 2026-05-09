import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シグナルビーム in Japanese.
    ///
    /// The localized name of this move is `"Signal Beam"` in English and
    /// `"シグナルビーム"` in Japanese.
    ///
    /// The move's raw value is `"signal-beam"`.
    static let signalBeam = SignalBeamMove.move
}

enum SignalBeamMove {
    static let move = PokemonMove(rawValue: "signal-beam")
    static let parameters1 = PokemonMove.Parameters(
        type: .bug,
        pp: 15,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .bug,
        pp: 15,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Signal Beam",
            .japanese: "シグナルビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let signalBeam = SignalBeamMove.definition
}
