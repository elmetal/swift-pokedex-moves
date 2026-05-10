import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こおりのつぶて in Japanese.
    ///
    /// The localized name of this move is `"Ice Shard"` in English and
    /// `"こおりのつぶて"` in Japanese.
    ///
    /// The move's raw value is `"ice-shard"`.
    static let iceShard = IceShardMove.move
}

enum IceShardMove {
    static let move = PokemonMove(rawValue: "ice-shard")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
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
            .english: "Ice Shard",
            .japanese: "こおりのつぶて",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let iceShard = IceShardMove.definition
}
