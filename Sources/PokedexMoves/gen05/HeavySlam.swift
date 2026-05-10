import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ヘビーボンバー in Japanese.
    ///
    /// The localized name of this move is `"Heavy Slam"` in English and
    /// `"ヘビーボンバー"` in Japanese.
    ///
    /// The move's raw value is `"heavy-slam"`.
    static let heavySlam = HeavySlamMove.move
}

enum HeavySlamMove {
    static let move = PokemonMove(rawValue: "heavy-slam")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .varies,
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Heavy Slam",
            .japanese: "ヘビーボンバー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let heavySlam = HeavySlamMove.definition
}
