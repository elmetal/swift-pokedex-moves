import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マグマストーム in Japanese.
    ///
    /// The localized name of this move is `"Magma Storm"` in English and
    /// `"マグマストーム"` in Japanese.
    ///
    /// The move's raw value is `"magma-storm"`.
    static let magmaStorm = MagmaStormMove.move
}

enum MagmaStormMove {
    static let move = PokemonMove(rawValue: "magma-storm")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .special,
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
                versionGroups: [.blackWhite, .black2White2],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Magma Storm",
            .japanese: "マグマストーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magmaStorm = MagmaStormMove.definition
}
