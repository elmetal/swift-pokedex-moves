import Foundation

public extension PokemonMove {
    /// The Pokemon move known as リーフストーム in Japanese.
    ///
    /// The localized name of this move is `"Leaf Storm"` in English and
    /// `"リーフストーム"` in Japanese.
    ///
    /// The move's raw value is `"leaf-storm"`.
    static let leafStorm = LeafStormMove.move
}

enum LeafStormMove {
    static let move = PokemonMove(rawValue: "leaf-storm")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Leaf Storm",
            .japanese: "リーフストーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let leafStorm = LeafStormMove.definition
}
