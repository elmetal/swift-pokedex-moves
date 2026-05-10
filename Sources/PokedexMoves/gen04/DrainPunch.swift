import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドレインパンチ in Japanese.
    ///
    /// The localized name of this move is `"Drain Punch"` in English and
    /// `"ドレインパンチ"` in Japanese.
    ///
    /// The move's raw value is `"drain-punch"`.
    static let drainPunch = DrainPunchMove.move
}

enum DrainPunchMove {
    static let move = PokemonMove(rawValue: "drain-punch")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(75),
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
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Drain Punch",
            .japanese: "ドレインパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let drainPunch = DrainPunchMove.definition
}
