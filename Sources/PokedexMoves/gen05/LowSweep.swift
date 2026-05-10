import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ローキック in Japanese.
    ///
    /// The localized name of this move is `"Low Sweep"` in English and
    /// `"ローキック"` in Japanese.
    ///
    /// The move's raw value is `"low-sweep"`.
    static let lowSweep = LowSweepMove.move
}

enum LowSweepMove {
    static let move = PokemonMove(rawValue: "low-sweep")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(65),
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
                versionGroups: [.blackWhite, .black2White2],
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
            .english: "Low Sweep",
            .japanese: "ローキック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lowSweep = LowSweepMove.definition
}
